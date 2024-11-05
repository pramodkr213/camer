import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'main/main_base.dart'
if (dart.library.html) 'main/main_web.dart'
if (dart.library.io) 'main/main_io.dart';

class Compress_Img extends StatefulWidget {
  @override
  _Compress_ImgState createState() => _Compress_ImgState();
}

class _Compress_ImgState extends State<Compress_Img> {
  Uint8List? _selectedImage;
  Uint8List? _compressedImage;
  double? _originalSizeKB;
  double? _compressedSizeKB;

  Future<void> _pickAndCompressImage() async {
    final fileResult = await FilePicker.platform.pickFiles(type: FileType.image);

    if (fileResult != null && fileResult.files.isNotEmpty) {
      final pickedImage = fileResult.files.first.bytes!;
      final originalSize = pickedImage.length;
      final originalSizeKB = originalSize / 1024;
      final compressedImage = _compressImage(pickedImage);
      final compressedSize = compressedImage.length;
      final compressedSizeKB = compressedSize / 1024;
      setState(() {
        _selectedImage = pickedImage;
        _compressedImage = compressedImage;
        _originalSizeKB = originalSizeKB;
        _compressedSizeKB = compressedSizeKB;
      });

      print('Original image size: $_originalSizeKB KB');
      print('Compressed image size: $_compressedSizeKB KB');
    }
  }

  Uint8List _compressImage(Uint8List imageBytes) {
    final image = img.decodeImage(imageBytes)!;
    final compressedImage = img.encodeJpg(image, quality: 25); // Adjust quality as needed
    return compressedImage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Compressor'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_selectedImage != null) ...[
                Image.memory(_selectedImage!),
                SizedBox(height: 10),
                Text('Original image size: ${_originalSizeKB?.toStringAsFixed(2)} KB'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _pickAndCompressImage(),
                  child: Text('Pick and Compress Image'),
                ),
              ] else ...[
                ElevatedButton(
                  onPressed: () => _pickAndCompressImage(),
                  child: Text('Pick Image'),
                ),
              ],
              if (_compressedImage != null) ...[
                SizedBox(height: 20),
                Image.memory(_compressedImage!),
                SizedBox(height: 10),
                 Text('Compressed image size: ${_compressedSizeKB?.toStringAsFixed(2)} KB'),
              ],
            ],
          ),
        ),
      ),
    );
  }
}