import 'package:bike_compass/data/providers/hive.dart';
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
  await HiveBoxProvider.init();
}

cleanUpHive() async {
  for (var element in HiveBoxProvider.boxes.entries) {
    await element.value?.deleteFromDisk();
  }
}
