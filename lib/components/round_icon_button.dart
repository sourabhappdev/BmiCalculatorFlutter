import 'package:flutter/material.dart';

class RoundeIconButton extends StatelessWidget {
  RoundeIconButton({required this.icon, required this.dothis});
  final IconData icon;
  final VoidCallback dothis;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: dothis,
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
