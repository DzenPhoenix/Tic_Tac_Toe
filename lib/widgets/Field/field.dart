import 'package:flutter/widgets.dart';
import '../Cell/cell.dart';
import '../../models/cell_model.dart';

class Field extends StatelessWidget {
  final int fieldSize;
  const Field({Key? key, required this.fieldSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
          fieldSize,
          (yIdx) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  fieldSize,
                  (xIdx) => Cell(
                      size: 50,
                      cellModel:
                          CellModel(posX: xIdx, posY: yIdx, isZero: false))))),
    );
  }
}
