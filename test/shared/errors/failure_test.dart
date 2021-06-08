import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/errors/fault.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Test Fault', () {
    test('Test prettyMap() method work', () {
      final fault = UnhandledFailure('Error', StackTrace.current);

      expect(fault.toPrettyMap(), isNotEmpty);
    });

    test('Test toString() method work', () {
      final fault = UnhandledFailure('Error', StackTrace.current);

      expect(fault.toString(), isNotEmpty);
    });

    test('Test prettyMap() method work with Fault instance', () {
      final fault = UnhandledFailure(HttpClientFault(), StackTrace.current);

      expect(fault.toPrettyMap(), isNotEmpty);
    });

    test('Test toString() method work with Fault instance', () {
      final fault = UnhandledFailure(HttpClientFault(), StackTrace.current);

      expect(fault.toString(), isNotEmpty);
    });
  });
}
