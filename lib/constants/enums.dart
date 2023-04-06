// ignore: constant_identifier_names
enum EngineVariant { OnePointFive, Two }

extension EngineVariantString on EngineVariant {
  String get getVariant {
    switch (this) {
      case EngineVariant.OnePointFive:
        return '1.5L';
      case EngineVariant.Two:
        return '2L';
      default:
        return 'NULL';
    }
  }
}

enum EngineLine { Crank, Block }

extension EngineLineString on EngineLine {
  String get getLine {
    switch (this) {
      case EngineLine.Block:
        return 'Block';
      case EngineLine.Crank:
        return 'Crank';
      default:
        return 'NULL';
    }
  }
}
