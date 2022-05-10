import './cell_model.dart';

class FieldModel {
  List<List<CellModel>> cells;
  FieldModel({required this.cells});

  CellModel getCell({required int posX, required int posY}) {
    return cells[posX][posY];
  }

  static FieldModel generateDefault() {
    var cells = List<List<CellModel>>.generate(
        1,
        (xIdx) => List<CellModel>.generate(
            1, (yIdx) => CellModel(posX: xIdx, posY: yIdx, isZero: false)));
    return FieldModel(cells: cells);
  }

  void generateNewField({
    int fieldSize = 1,
  }) {
    cells = List<List<CellModel>>.generate(
        fieldSize,
        (xIdx) => List<CellModel>.generate(fieldSize,
            (yIdx) => CellModel(posX: xIdx, posY: yIdx, isZero: false)));
  }
}
