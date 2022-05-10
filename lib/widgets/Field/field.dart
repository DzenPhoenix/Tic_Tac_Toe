import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/models/field_model.dart';
import '../Cell/cell.dart';
import '../../models/cell_model.dart';

class Field extends StatelessWidget {
  final int fieldSize;
  final FieldModel fieldState;
  final void Function({required CellModel targetCell}) handleClick;

  const Field(
      {Key? key,
      required this.fieldSize,
      required this.handleClick,
      required this.fieldState})
      : super(key: key);

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
                    cellModel: fieldState.getCell(posX: xIdx, posY: yIdx),
                    handleClick: handleClick),
              ))),
    );
  }
}
