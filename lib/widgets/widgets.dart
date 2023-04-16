import 'package:extension_tile/model/cart_model.dart';
import 'package:flutter/material.dart';

class MyCustomView extends StatelessWidget {
  const MyCustomView({Key? key, required this.onTap, required this.cardModel})
      : super(key: key);

  final VoidCallback onTap;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                spreadRadius: 10,
                blurRadius: 10,
                color: Colors.grey.shade300,
                offset: Offset(1, 3),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(

              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                child: Image.network(
                  fit: BoxFit.cover,
                  cardModel.imageUrl,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding( padding: EdgeInsets.symmetric(horizontal: 12),child: Text(cardModel.cardTitle)),
            Padding(padding:EdgeInsets.symmetric(horizontal: 12), child: Text(cardModel.cardSubtitle))
          ],
        ),
      ),
    );
  }
}
