import 'package:animation/models/product.dart';
import 'package:animation/ui/product_detail_page/productDetailBackground.dart';
import 'package:animation/ui/product_detail_page/productDetailContent.dart';
import 'package:animation/ui/product_detail_page/productDetailTopBar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
 // const ProductDetailPage({Key key}) : super(key: key);
   final Product product;
      ProductDetailPage({@required this.product});


  @override
  Widget build(BuildContext context) {
    final screenHeight=MediaQuery.of(context).size.height;
    final screenWidth=MediaQuery.of(context).size.width;
   
    
    return Scaffold(
      body:Stack(
          children: <Widget>[
            ProductDetailBackground(screenHeight:screenHeight ,screenWidth:screenWidth ,),
            SingleChildScrollView(
              child:Column(
                children:<Widget>[
                  ProductDetailTopBar(),
                  ProductDetailContent(product:product,screenHeight:screenHeight ),
                ]
              )
            ),
            
          ],
        )
    );
  }
}