import 'package:flutter/material.dart';

// TO DO add to cell parameteers posX, PosY,isZero, handleClick function
class Cell extends StatelessWidget {
  final double size;
  const Cell({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(border: Border.all()),
      ),
    );
  }
}
