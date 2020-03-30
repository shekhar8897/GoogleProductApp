import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  //const RedButton({Key key}) : super(key: key);
  final String buttonText;

  RedButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.symmetric(horizontal: 96),
      onPressed: (){},
      textColor: Colors.white,
      color: Color(0xFFDA1D21),
      child: Text(
        buttonText.toUpperCase(),
        
      ),
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
    );
  }
}