import 'package:dartz/dartz.dart';
import 'package:kuama_dart_domain/kuama_dart_domain.dart';
import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';
import 'package:kuama_dart_domain/src/features/permissions/repositories/permission_preferences_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Check if the permit can be requested
abstract class CanAskPermission extends UseCase<Permission, bool> {
  CanAskPermission();

  factory CanAskPermission.preferences() => _PreferencesCanAskPermission();
}

/// [CanAskPermission] Use the repository [PermissionPreferencesRepository]
class _PreferencesCanAskPermission extends CanAskPermission {
  final PermissionPreferencesRepository prefRepo = GetIt.I();

  @override
  Stream<Either<Failure, bool>> tryCall(Permission permission) async* {
    yield* prefRepo.getCanAsk(permission).toRight();
  }
}
