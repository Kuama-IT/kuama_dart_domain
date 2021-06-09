import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:kuama_dart_domain/src/features/positioner/repositories/locator_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Receive the service status of the location
class OnPositionServiceChanges extends UseCase<NoParams, bool> {
  final LocatorRepository locatorRepo = GetIt.I();

  @override
  Stream<Either<Failure, bool>> tryCall(NoParams params) {
    return locatorRepo.onServiceChanges.toRight();
  }
}
