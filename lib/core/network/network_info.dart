// import 'dart:io';
//
// import 'package:injectable/injectable.dart';
//
// abstract class NetworkInfo {
//   Future<bool> isConnected();
// }
//
// @injectable
// @singleton
// class NetworkInfoImpl implements NetworkInfo {
//   bool isOffline = false;
//
//   set setOffline(bool value) {
//     isOffline = value;
//   }
//
//   @override
//   Future<bool> isConnected() async {
//     if (isOffline) {
//       return false;
//     }
//     try {
//       final result = await InternetAddress.lookup('google.com');
//       return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
//     } on SocketException catch (_) {
//       return false;
//     }
//   }
// }
