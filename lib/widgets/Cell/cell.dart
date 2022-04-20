import 'package:flutter/material.dart';

// TO DO handleClick function
class Cell extends StatelessWidget {
  final double size;
  final int posX, posY;
  final bool isZero;
  const Cell(
      {Key? key,
      required this.size,
      required this.posX,
      required this.posY,
      required this.isZero})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String assetName = isZero
        ? '../../../assets/images/cell/circle.png'
        : '../../../assets/images/cell/cross.png';
    return Center(
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage(assetName),
                fit: BoxFit.cover,
              ))),
    );
  }
}
