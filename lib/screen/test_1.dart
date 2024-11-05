// import 'package:flimer/flimer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';



// class MainPage extends StatefulWidget {
//   @override
//   MainPageState createState() => MainPageState();
// }

// class MainPageState extends State<MainPage> {
//   var absolute = [];
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style = ElevatedButton.styleFrom(
//       primary: Colors.blue,
//       onPrimary: Colors.white,
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flimer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               style: style,
//               child: Text('Open an image'),
//               onPressed: _openImageFile,
//             ),
//             SizedBox(height: 8),
//             ElevatedButton(
//               style: style,
//               child: Text('Open multiple images'),
//               onPressed: _openImageFiles,
//             ),
//             SizedBox(height: 8),
//             ElevatedButton(
//               style: style,
//               child: Text('Take a picture'),
//               onPressed: _takePicture,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _openImageFile() async {
//     final file = await flimer.pickImage(source: ImageSource.gallery);
//     if (file == null) {
//       // Operation was canceled by the user.
//       return;
//     }
//     final String fileName = file.name;
//     final String filePath = file.path;

//     await showDialog(
//       context: context,
//       builder: (context) => ImageDisplay(fileName, filePath),
//     );
//   }

//   void _openImageFiles() async {
//     final files = await flimer.pickImages();
//     if (files == null || files.isEmpty) {
//       // Operation was canceled by the user.
//       return;
//     }

//     await showDialog(
//       context: context,
//       builder: (context) => MultipleImagesDisplay(files),
//     );
//   }

//   void _takePicture() async {
//     final file = await flimer.pickImage(source: ImageSource.camera);
//     if (file == null) {
//       // Operation was canceled by the user.
//       return;
//     }
//     final String fileName = file.name;
//     final String filePath = file.path;

//     await showDialog(
//       context: context,
//       builder: (context) => ImageDisplay(fileName, filePath),
//     );
//   }
// }

// MultipleImagesDisplay(List<XFile> files) {
// }

// ImageDisplay(String fileName, String filePath) {
// }

// // 1. compress file and get Uint8List
// /*
// Future<Uint8List?> testCompressFile(File file) async {
//   var absolute;
//   var result = await FlutterImageCompress.compressWithFile(
//     // file.absolute.path,
//     minWidth: 2300,
//     minHeight: 1500,
//     quality: 94,
//     rotate: 90,
//   );
//    // print(file.lengthSync());
//   print(result?.length);
//   return result;
// }

// // 2. compress file and get file.
// Future<XFile?> testCompressAndGetFile(File file, String targetPath) async {

//   var result = await FlutterImageCompress.compressAndGetFile(
//     file.absolute.path, targetPath,
//     quality: 88,
//     rotate: 180,
//   );

//   // print(file.lengthSync());
//   // print(result?.lengthSync());

//   return result;
// }

// // 3. compress asset and get Uint8List.
// Future<Uint8List?> testCompressAsset(String assetName) async {
//   var list = await FlutterImageCompress.compressAssetImage(
//     assetName,
//     minHeight: 1920,
//     minWidth: 1080,
//     quality: 96,
//     rotate: 180,
//   );

//   return list;
// }

// // 4. compress Uint8List and get another Uint8List.
// Future<Uint8List> testComporessList(Uint8List list) async {
//   var result = await FlutterImageCompress.compressWithList(
//     list,
//     minHeight: 1920,
//     minWidth: 1080,
//     quality: 96,
//     rotate: 135,
//   );
//   print(list.length);
//   print(result.length);
//   return result;
// }*/
