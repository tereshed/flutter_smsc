import 'package:dio/dio.dart';

abstract class SMSCenter {
  Dio client = Dio();
  final String login;
  final String pass;

  SMSCenter({
    required this.login,
    required this.pass,
  });

  Future<Response?> getData(String url) async {
    return await client.get(url);
  }
}
