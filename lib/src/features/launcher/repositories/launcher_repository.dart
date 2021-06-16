/// It defines which pages can be launched
abstract class LauncherRepository {
  const LauncherRepository._();

  /// Opens the app settings page.
  ///
  /// Returns [true] if the app settings page could be opened, otherwise [false].
  Stream<bool> launchAppSettings();
}
