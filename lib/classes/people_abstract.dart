import 'package:my_dart_oo/enums/type_notification.dart';

abstract class People {
  // underline indica que a propriedade é privada
  String _name = '';
  String _address = '';
  TypeNotification _typeNotification = TypeNotification.ANY;

  String _email = '';
  String _cellPhone = '';
  String _token = '';

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setAddress(String address) {
    _address = address;
  }

  String getAddress() {
    return _address;
  }

  void setTypeNotification(TypeNotification typeNotification) {
    _typeNotification = typeNotification;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setcellPhone(String cellphone) {
    _cellPhone = cellphone;
  }

  String getCellPhone() {
    return _cellPhone;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  TypeNotification getTypeNotification() {
    return _typeNotification;
  }

  // Construtor da Classe
  People(String name, String address,
      {TypeNotification typeNotification = TypeNotification.ANY}) {
    _name = name;
    _address = address;
    _typeNotification = typeNotification;
  }

  @override
  String toString() {
    return {
      'Name': _name,
      'Address': _address,
      'Type Notification': _typeNotification
    }.toString();
  }
}
