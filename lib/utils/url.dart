import 'package:uri/uri.dart';

String buildUrl(String host, String url, Map<String, dynamic> params) {
  Uri result = Uri.https(host, url, params);

  return result.toString();
}
