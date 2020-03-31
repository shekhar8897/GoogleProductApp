import 'package:flutter/material.dart';

class ProductDetailTopBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Container(
      margin:const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.symmetric(horizontal: 16),

      height: 56,
      child: Row(
        children:<Widget>[
          Icon(Icons.arrow_back),
          Spacer(),
          Icon(Icons.search,color: Colors.white,),
          
          Image.asset("assets/icons/menu.png",color: Colors.white,height: 30,),
        ]
      ),
    );
  }
}