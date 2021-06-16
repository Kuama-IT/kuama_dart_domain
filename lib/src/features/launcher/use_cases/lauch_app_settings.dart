import 'package:dartz/dartz.dart';
import 'package:kuama_dart_domain/kuama_dart_domain.dart';
import 'package:kuama_dart_domain/src/features/launcher/repositories/launcher_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Opens the app settings page.
///
/// Returns [true] if the app settings page could be opened, otherwise [false].
class LaunchAppSettings extends UseCase<NoParams, bool> {
  final LauncherRepository launcherRepo = GetIt.I();

  @override
  Stream<Either<Failure, bool>> tryCall(NoParams _) async* {
    yield* launcherRepo.launchAppSettings().toRight();
  }
}
