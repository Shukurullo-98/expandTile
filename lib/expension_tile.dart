// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Expendet tile"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ExpansionTile(
//               title: Text("Expansion tile1"),
//               subtitle: Text("Subtitlie tile1"),
//               controlAffinity: ListTileControlAffinity.leading,
//               trailing: Icon(Icons.adb_sharp),
//               onExpansionChanged: (bool value){print(value);},
//               children: <Widget>[
//                 ListTile(
//                   title: Text("This is tile number1"),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
