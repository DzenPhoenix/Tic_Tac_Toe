import 'package:flutter/material.dart';
import '../../models/cell_model.dart';

// TO DO handleClick function
class Cell extends StatelessWidget {
  final CellModel cellModel;
  final double size;
  const Cell({Key? key, required this.size, required this.cellModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String assetName = cellModel.getIsZero()
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
