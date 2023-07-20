import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

sealed class HiveBoxesNames {
  static const mapDestinations = "map_destinations";
  static Iterable<String> getAll() sync* {
    yield mapDestinations;
  }
}

class HiveBoxProvider {
  static final HiveBoxProvider i = HiveBoxProvider._internal();
  HiveBoxProvider._internal();

  final Map<String, Box?> _boxes = {};
  static Map<String, Box?> get boxes => i._boxes;
  static Box? get mapDataBox => i._boxes[HiveBoxesNames.mapDestinations];

  static Future<HiveBoxProvider> init() async {
    if (!kIsWeb) {
      Hive.init((await getApplicationDocumentsDirectory()).path);
    }

    for (var boxName in HiveBoxesNames.getAll()) {
      if (!Hive.isBoxOpen(boxName)) {
        i._boxes[boxName] = await Hive.openBox(boxName);
      } else {
        i._boxes[boxName] = Hive.box(boxName);
      }
    }

    return i;
  }
}
