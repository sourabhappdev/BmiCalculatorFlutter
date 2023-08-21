import 'package:flutter/material.dart';
import '../constants.dart';



class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});

  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonStyle,
          ),
        ),
        color: KBottomcontainercolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}