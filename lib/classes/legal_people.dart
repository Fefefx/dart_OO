import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/enums/type_notification.dart';

class LegalPeople extends People {
  String _cnpj = '';

  void setCPNJ(String cnpj) {
    _cnpj = cnpj;
  }

  String getCNPJ() {
    return _cnpj;
  }

  LegalPeople(String name, String address, String cnpj,
      {TypeNotification typeNotification = TypeNotification.ANY})
      : super(name, address, typeNotification: typeNotification) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      'Name': getName(),
      'Address': getAddress(),
      'Type Notification': getTypeNotification(),
      'CNPJ': _cnpj
    }.toString();
  }
}
