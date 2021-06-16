import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';

/// Manage permissions preferences
abstract class PermissionPreferencesRepository {
  const PermissionPreferencesRepository._();

  Stream<bool> getCanAsk(Permission permission);

  Stream<bool> setCanAsk(Permission permission, bool canAsk);
}
