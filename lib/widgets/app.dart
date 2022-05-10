import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/cell_model.dart';
import 'package:tic_tac_toe/models/field_model.dart';
import './Field/field.dart';

class TicTacToeApp extends StatefulWidget {
  final int fieldSize;
  final FieldModel fieldState = FieldModel.generateDefault();
  TicTacToeApp({Key? key, required this.fieldSize}) : super(key: key) {
    fieldState.generateNewField(fieldSize: fieldSize);
  }

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToeApp> {
  @override
  Widget build(BuildContext context) {
    void cellHandleClick({required CellModel targetCell}) {
      bool currentState = targetCell.getIsZero();
      setState(() {
        widget.fieldState
            .getCell(posX: targetCell.getX(), posY: targetCell.getY())
            .setIsZero(!currentState);
      });
    }

    return MaterialApp(
        home: Scaffold(
            body: Field(
      fieldSize: widget.fieldSize,
      handleClick: cellHandleClick,
      fieldState: widget.fieldState,
    )));
  }
}
