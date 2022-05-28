

import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
   const DefaultButton(
      {required this.text,
      required this.press,
      required this.color,
      required this.width});
  final String text;
  final Function? press;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          primary: Colors.green,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
Divider divider() {
  return const Divider(
    height: 10,
    thickness: 3,
    indent: 1,
    endIndent: 1,
    color: Color(0xFFE4E4E4),
  );
}
