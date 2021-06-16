import 'package:kuama_dart_domain/src/features/permissions/entities/permission.dart';
import 'package:kuama_dart_domain/src/shared/use_case/use_case.dart';

/// Check if the permit can be requested
abstract class CanAskPermission extends UseCase<Permission, bool> {}
