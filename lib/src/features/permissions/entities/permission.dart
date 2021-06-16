enum Permission {
  contacts,
  position,
  backgroundPosition,
}

enum PermissionStatus {
  /// The permission can only be activated from the platform settings
  permanentlyDenied,

  /// Permission may be required
  denied,

  /// Permission was granted
  granted,
}

extension PermissionStatusExtension on PermissionStatus {
  bool get isPermanentlyDenied => this == PermissionStatus.permanentlyDenied;
  bool get isDenied => this == PermissionStatus.denied;
  bool get isGranted => this == PermissionStatus.granted;
}
