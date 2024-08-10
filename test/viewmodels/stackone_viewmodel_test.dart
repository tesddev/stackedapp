import 'package:flutter_test/flutter_test.dart';
import 'package:stackedapp/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StackoneViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
