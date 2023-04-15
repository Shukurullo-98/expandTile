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
//         title: Text("Grid view"),
//       ),
//       body: GridView.count(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         crossAxisCount: 3,
//         scrollDirection: Axis.vertical,
//         physics: BouncingScrollPhysics(),
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         childAspectRatio: 1,
//         children: List.generate(
//           100,
//               (index) => ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Image.network(
//                 fit: BoxFit.cover,
//                 "https://tourpedia.ru/wp-content/uploads/2017/03/%D1%80%D0%B0%D0%B7%D0%BD%D0%BE%D1%86%D0%B2%D0%B5%D1%82%D0%BD%D1%8B%D0%B5-%D0%B3%D0%BE%D1%80%D1%8B-%D0%91%D0%BE%D0%BB%D1%8C%D1%88%D0%BE%D0%B9-%D0%BA%D0%B0%D0%BD%D1%8C%D0%BE%D0%BD.jpg"),
//           ),
//         ),
//       ),
//     );
//   }
// }
