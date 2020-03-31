import 'package:animation/models/product.dart';
import 'package:animation/ui/product_detail_page/productDetailPage.dart';
import 'package:flutter/material.dart';
import './ui/product_listing_page/productListingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: ProductDetailPage(product: stadia,)
    );
  }
}
