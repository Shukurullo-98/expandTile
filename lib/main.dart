import 'package:extension_tile/model/my_card_data.dart';
import 'package:flutter/material.dart';

import 'model/cart_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardModel> myData = MyCardData.getMyCards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          var mySingleData = myData[index];

          return Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                fit: BoxFit.cover,
                mySingleData.imageUrl,
              ),
            ),
            Text(mySingleData.cardTitle),
            Text(mySingleData.cardSubtitle)
          ],
          );
        },
      ),
    );
  }
}
