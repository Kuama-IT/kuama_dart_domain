import 'package:dartz/dartz.dart';
import 'package:kuama_dart_domain/kuama_dart_domain.dart';
import 'package:kuama_dart_domain/src/features/app_pages/repositories/app_pages_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Opens the app settings page.
///
/// Returns [true] if the app settings page could be opened, otherwise [false].
class OpenSettingsAppPage extends UseCase<NoParams, bool> {
  final AppPagesRepository launcherRepo = GetIt.I();

  @override
  Stream<Either<Failure, bool>> tryCall(NoParams _) async* {
    yield* launcherRepo.openSettings().toRight();
  }
}
