import 'package:permission_handler/permission_handler.dart';

class PermessionHandler {
  Future<void> requestPermission() async {}

  Future<bool> checkStoragePermission() async {
    var storageStatus = await Permission.storage.status;
    if (storageStatus.isGranted) {
      return true;
    } else {
      // Request permission if not granted
      var status = await Permission.storage.request();
      return status == PermissionStatus.granted;
    }
  }
}
