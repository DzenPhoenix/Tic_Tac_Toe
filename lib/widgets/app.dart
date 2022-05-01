import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/cell_model.dart';
import './Field/field.dart';

class TicTacToeApp extends StatefulWidget {
  final int fieldSize;
  const TicTacToeApp({Key? key, required this.fieldSize}) : super(key: key);

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToeApp> {
  // add handle click
  @override
  Widget build(BuildContext context) {
    List<List<CellModel>> fieldState = List<List<CellModel>>.generate(
        widget.fieldSize,
        (xIdx) => List<CellModel>.generate(widget.fieldSize,
            (yIdx) => CellModel(posX: xIdx, posY: yIdx, isZero: false)));
    return MaterialApp(
        home: Scaffold(body: Field(fieldSize: widget.fieldSize)));
  }
}
