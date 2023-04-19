import 'dart:io';

class AppwriteConstants {
  static const String databaseId = '64400c4d73b96bb634ce';
  static const String projectId = '64400ba975746c3992b5';
  static String endPoint =
      Platform.isAndroid ? 'http://192.168.1.4:80/v1' : 'http://localhost/v1';

  static const String userCollection = '64400c5719bf050d1c59';
}
