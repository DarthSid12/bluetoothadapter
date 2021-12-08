import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bt_adapter/bt_adapter.dart';

void main() {
  const MethodChannel channel = MethodChannel('bt_adapter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BtAdapter.platformVersion, '42');
  });
}
