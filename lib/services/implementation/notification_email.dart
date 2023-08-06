import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/services/notification_interface.dart';

class NotificationEmail implements NotificationInterface {
  @override
  void sendNotification(People people) {
    print('Enviando E-mail para ${people.getName()}');
  }
}
