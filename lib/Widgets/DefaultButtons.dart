import 'package:flutter/material.dart';
class KDefaultButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final Color color;
  final Color textColor;
  KDefaultButton({this.color,this.textColor,this.label,this.onTap});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        color: color,
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 20.0,
          ),
        ));
  }
}
