import 'package:dio/dio.dart';
import 'package:flutter_smsc/models/code.dart';
import 'package:flutter_smsc/service/abstracts.dart';
import 'package:flutter_smsc/utils/url.dart';

class PhoneConfirmation extends SMSCenter {
  String mes = 'code';
  String call = '1';
  String fmt = '3';
  String host = 'smsc.ru';
  String url = '/sys/send.php';

  PhoneConfirmation({
    required String login,
    required String pass,
  }) : super(login: login, pass: pass);

  Map<String, dynamic> buildParams(String phone) {
    return {
      'mes': mes,
      'call': call,
      'fmt': fmt,
      'login': login,
      'psw': pass,
      'phones': phone
    };
  }

  getCode(String phone) async {
    Map<String, dynamic> params = buildParams(phone);

    String uri = buildUrl(host, url, params);

    try {
      final response = await getData(uri);
      return response?.data
          .map<CodeResponse>((thought) => CodeResponse.fromJson(thought))
          .toList();
    } catch (error) {
      print(error);
    }
  }
}
