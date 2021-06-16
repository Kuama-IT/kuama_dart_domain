import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';
import 'package:kuama_dart_domain/src/features/permissions/repositories/permission_preferences_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

class UpdateCanAskPermissionParams extends ParamsBase {
  final Permission permission;
  final bool canAsk;

  UpdateCanAskPermissionParams(this.permission, this.canAsk) : super([permission, canAsk]);
}

/// Update if the permit can be requested
abstract class UpdateCanAskPermission extends UseCase<UpdateCanAskPermissionParams, bool> {
  UpdateCanAskPermission();

  factory UpdateCanAskPermission.factory() = _PreferencesUpdateCanAskPermission;
}

/// [UpdateCanAskPermission] Use the repository [PermissionPreferencesRepository]
class _PreferencesUpdateCanAskPermission extends UpdateCanAskPermission {
  final PermissionPreferencesRepository prefRepo = GetIt.I();

  @override
  Stream<Either<Failure, bool>> tryCall(UpdateCanAskPermissionParams params) async* {
    yield* prefRepo.setCanAsk(params.permission, params.canAsk).toRight();
  }
}
