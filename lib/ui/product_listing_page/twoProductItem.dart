import 'package:animation/models/product.dart';
import 'package:animation/ui/product_listing_page/verticalProductItemWidget.dart';
import 'package:flutter/material.dart';


class TwoProductItemWidget extends StatelessWidget {
  
  final screenHeight;
 final Product product1,product2;

 TwoProductItemWidget({this.screenHeight,this.product1,this.product2});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:<Widget>[
          Expanded(
            child: VerticalProductItemWidget(
              screenHeight: screenHeight,
              product:product1
            ),
          ),
          Expanded(
            child: VerticalProductItemWidget(
              screenHeight: screenHeight,
              product:product2
            ),
          ),
        ]
      ),
    );
  }
}