import 'package:animation/models/product.dart';
import 'package:flutter/material.dart';


class TwoProductItemWidget extends StatelessWidget {
  
  final screenHeight;
 final Product product1,prodcut2;

 TwoProductItemWidget({this.screenHeight,this.product1,this.prodcut2});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:<Widget>[
          Expanded(
            child: VerticalProductItemWidget(
              product:product1
            ),
          ),
          Expanded(
            child: VerticalProductItemWidget(
              product:product2
            ),
          ),
        ]
      ),
    );
  }
}