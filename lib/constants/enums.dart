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
