import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/services/notification_interface.dart';

class NotificationPush implements NotificationInterface {
  @override
  void sendNotification(People people) {
    print('Enviando Push para ${people.getName()}');
  }
}
