import 'package:animation/models/product.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  //const BlueButton({Key key}) : super(key: key);

  final Product product;

  BlueButton({this.product});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      child: Text(
        product.buttonText,
        style:TextStyle(
          color:Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10  
        ),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    );
  }
}