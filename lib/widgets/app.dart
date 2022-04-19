import 'package:flutter/material.dart';
import './Cell/cell.dart';

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: Cell(size: 100)));
  }
}
