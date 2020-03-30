import 'package:animation/models/product.dart';
import 'package:flutter/material.dart';

class VerticalProductItemWidget extends StatelessWidget {
  //const VerticalProductItemWidget({Key key}) : super(key: key);
  final Product product;
  final screenHeight;


  VerticalProductItemWidget({this.screenHeight,this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.backgroundColor,
      child: Column(
        children: <Widget>[
          Image.asset(product.imagePath,height: screenHeight*0.25,),
          SizedBox(height: 5,),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B43),
              fontSize: 14
            ),
          ),
          Text(
            product.description,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B43),
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}