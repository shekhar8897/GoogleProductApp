import 'package:flutter/material.dart';

class ProductDetailBackground extends StatelessWidget {
  //const ProductDetailBackground({Key key}) : super(key: key);
  final screenHeight,screenWidth;
  ProductDetailBackground({this.screenHeight,this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit:StackFit.expand,
      children: <Widget>[
        Positioned(
          left:screenWidth*0.27,
          top:-screenWidth*0.4,
          child: Container(
              height:screenWidth*1.2,
              width: screenWidth*1.2,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                color: Color(0xFF0000FF)
              ),
          ),
        ),
        Positioned(
          left: 20,
          right:20,
          top:screenHeight*0.2,
          child: Image.asset("assets/images/google_text_logo.png",color: Color(0xFFECECEC).withOpacity(1),),
          )
        
      ],
    );
  }
}