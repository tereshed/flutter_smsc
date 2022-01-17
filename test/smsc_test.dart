import 'package:flutter_smsc/flutter_smsc.dart';

void main() {
  PhoneConfirmation smscService = PhoneConfirmation(
    login: 'tkvnocode',
    pass: 'Low20061985!',
  );

  dynamic res = smscService.getCode('79653179882');
}
