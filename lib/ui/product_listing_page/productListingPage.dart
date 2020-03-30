
import 'package:animation/ui/product_listing_page/redButton.dart';
import 'package:animation/ui/product_listing_page/twoProductItem.dart';
import 'package:flutter/material.dart';
import 'package:animation/ui/product_listing_page/rightImageProductItem.dart';
import 'package:animation/models/product.dart';
import 'package:animation/ui/product_listing_page/leftImageProductItem.dart';
import 'package:animation/ui/product_listing_page/topbar.dart';



class productListingPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context)
  {
    final screenHeight=MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(16),
            child:Image.asset("assets/images/google_logo.png"),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child:Image.asset("assets/icons/menu.png"),
            ),
          ],
      ),
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            TopBar(),
            RightImageProductItem(screenHeight:screenHeight,product: pixel),
            LeftImageProductItem(screenHeight:screenHeight,product: stadia),
            TwoProductItemWidget(screenHeight:screenHeight,product1:pixelStand,product2:dayDreamView),
            RedButton(buttonText:"View all"),
          ],
        )
      )
    );
  }
}