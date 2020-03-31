import 'package:animation/models/product.dart';
import 'package:animation/ui/product_detail_page/productDetailContent.dart';
import 'package:animation/ui/products_listing_page/blue_button.dart';
import 'package:flutter/material.dart';




class LeftImageProductItem extends StatelessWidget {
  final screenHeight;
  final Product product;
  LeftImageProductItem({this.screenHeight,this.product});

@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetailContent(product: product,),),);
      },
        child: Container(
        padding: const EdgeInsets.only(left: 32),
        height:screenHeight*0.3,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex:5,
              
              child:  Image.asset(product.imagePath),
            ),
             Expanded(
              flex:4,
              child:Padding(
                padding: const EdgeInsets.only(left:16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(product.name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w900),),
                     Text(product.description,style: TextStyle(fontSize: 10),),
                    SizedBox(height:5),
                    BlueButton(product: product,),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

