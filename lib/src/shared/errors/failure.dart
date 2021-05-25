import 'package:kuama_dart_domain/src/shared/pretty_formatter/pretty_formatter.dart';

abstract class Failure with PrettyObject {
  final StackTrace stackTrace = StackTrace.current;
  final Object? error;
  final StackTrace? errorStackTrace;

  Failure({this.error, this.errorStackTrace});

  /// Message that can be shown to the user to inform him of the problem
  String get message;

  @override
  Map<String, dynamic> toPrettyMap() {
    return {
      'Failure: ${runtimeType}': '${message}\n${stackTrace}',
      if (error != null) 'Error: ${error.runtimeType}': '$error\n$errorStackTrace',
    };
  }

  @override
  String toString() {
    return '$runtimeType: $message\n$stackTrace';
  }
}

class UnhandledFailure extends Failure {
  UnhandledFailure(Object error, [StackTrace? stackTrace])
      : super(error: error, errorStackTrace: stackTrace);

  @override
  String get message => 'App Crashed';
}
