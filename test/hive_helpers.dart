import 'package:bike_compass/logic/hive_boxes.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

setUpHive(String path) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
          const MethodChannel('plugins.flutter.io/path_provider'),
          (MethodCall methodCall) async {
    return path;
  });
  await HiveBoxes().init();
}

cleanUpHive() async {
  for (var element in HiveBoxes.i!.boxes.entries) {
    await element.value?.deleteFromDisk();
  }
}
