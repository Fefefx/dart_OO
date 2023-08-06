import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/enums/type_notification.dart';

class PhysicalPeople extends People {
  String _cpf = '';

  void setCPF(String cpf) {
    _cpf = cpf;
  }

  String getCPF() {
    return _cpf;
  }

  PhysicalPeople(String name, String address, String cpf,
      {TypeNotification typeNotification = TypeNotification.ANY})
      : super(name, address, typeNotification: typeNotification) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      'Name': getName(),
      'Address': getAddress(),
      'Type Notification': getTypeNotification(),
      'CPF': _cpf
    }.toString();
  }
}
