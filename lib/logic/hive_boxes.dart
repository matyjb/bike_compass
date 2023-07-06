import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

sealed class HiveBoxesNames {
  static const mapDestinations = "map_destinations";
  static Iterable<String> getAll() sync* {
    yield mapDestinations;
  }
}

class HiveBoxes {
  final Map<String, Box?> boxes = {};
  static HiveBoxes? instance;
  static HiveBoxes? get i => instance;

  Future<HiveBoxes> init() async {
    instance = this;
    if (!kIsWeb) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }

    for (var boxName in HiveBoxesNames.getAll()) {
      if (!Hive.isBoxOpen(boxName)) {
        boxes[boxName] = await Hive.openBox(boxName);
      } else {
        boxes[boxName] = Hive.box(boxName);
      }
    }

    return this;
  }
}
