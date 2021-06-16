import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

class UpdateCanAskPermissionParams extends ParamsBase {
  final Permission permission;
  final bool canRequire;

  UpdateCanAskPermissionParams(this.permission, this.canRequire) : super([permission, canRequire]);
}

/// Update if the permit can be requested
abstract class UpdateCanAskPermission extends UseCase<UpdateCanAskPermissionParams, bool> {}
