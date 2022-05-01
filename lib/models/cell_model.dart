class CellModel {
  int _posX = 0, _posY = 0;
  bool _isZero = false;
  CellModel({required int posX, required int posY, required bool isZero}) {
    _posX = posX;
    _posY = posY;
    _isZero = isZero;
  }

  int getX() {
    return _posX;
  }

  int getY() {
    return _posY;
  }

  bool getIsZero() {
    return _isZero;
  }

  void setX(int posX) {
    _posX = posX;
  }

  void setY(int posY) {
    _posY = posY;
  }

  void setIsZero(bool isZero) {
    _isZero = isZero;
  }
}
