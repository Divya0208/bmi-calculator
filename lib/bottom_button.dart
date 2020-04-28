import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  
  final String text;
  final Function onPress;
  
  BottomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonText
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomCotainerHeight,
        padding: EdgeInsets.only(bottom: 5.0),
      ),
    );
  }
}