import 'package:extension_tile/model/cart_model.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key, required this.cardModel}) : super(key: key);
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Card Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                child: Image.network(cardModel.imageUrl, fit: BoxFit.fill,),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                cardModel.cardTitle,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black45,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                cardModel.cardSubtitle,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black45,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
