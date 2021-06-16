import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';
import 'package:kuama_dart_domain/src/features/permissions/repositories/permission_repository.dart';
import 'package:kuama_dart_domain/src/shared/errors/failure.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Requires permission
class RequestPermission extends UseCase<Permission, PermissionStatus> {
  final PermissionRepository permissionsRepo = GetIt.I();

  @override
  Stream<Either<Failure, PermissionStatus>> tryCall(Permission permission) async* {
    yield* permissionsRepo.request(permission).toRight();
  }
}
