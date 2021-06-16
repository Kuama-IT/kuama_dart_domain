import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';

abstract class PermissionRepository {
  const PermissionRepository._();

  /// Check the status of the permission
  /// See [PermissionStatus] for more information
  Stream<PermissionStatus> check(Permission permission);

  /// Requires permission
  Stream<PermissionStatus> request(Permission permission);
}
