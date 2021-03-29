import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.bottonTitle});

  final Function onTap;
  final String bottonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
      ),
    );
  }
}
