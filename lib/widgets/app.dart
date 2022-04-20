import 'package:flutter/material.dart';
import './Cell/cell.dart';

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(body: Cell(size: 50, posX: 0, posY: 0, isZero: false)));
  }
}
