import 'dart:io';

class AppwriteConstants {
  static const String databaseId = '64145fffcfebd352d92d';
  static const String projectId = '64145cf1d95c35817a7e';
  static String endPoint =
      Platform.isAndroid ? 'http://192.168.0.102:80/v1' : 'http://localhost/v1';

  static const String userCollection = '643a9f420595fe8f20e6';
}
