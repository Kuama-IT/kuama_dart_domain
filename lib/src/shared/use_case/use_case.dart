import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:kuama_dart_domain/kuama_dart_domain.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/utils/lg.dart';

abstract class UseCase<TParams extends Params, TResult> {
  Stream<Either<Failure, TResult>> call(TParams params) async* {
    try {
      await for (final result in tryCall(params)) {
        yield result;
      }
    } catch (error, stackTrace) {
      lg.warning(() {
        return PrettyObject({
          'Error in UseCase($runtimeType)': '$error\n$stackTrace',
          'Params': params,
        });
      });
      yield Left(UnhandledFailure(error, stackTrace));
    }
  }

  Stream<Either<Failure, TResult>> tryCall(TParams params);
}

abstract class Params extends Equatable {
  const Params();

  @override
  bool? get stringify => true;
}

class NoParams extends Params {
  const NoParams._();

  static const _instance = NoParams._();

  factory NoParams() => _instance;

  @override
  final List<Object?> props = const <Object?>[];
}

abstract class ParamsBase extends Params {
  const ParamsBase(this.props);

  @override
  bool? get stringify => true;

  @override
  final List<Object?> props;
}
