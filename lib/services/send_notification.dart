import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/enums/type_notification.dart';
import 'package:my_dart_oo/services/implementation/notification_SMS.dart';
import 'package:my_dart_oo/services/implementation/notification_email.dart';
import 'package:my_dart_oo/services/implementation/notification_push.dart';
import 'package:my_dart_oo/services/notification_interface.dart';

class SendNotification {
  NotificationInterface? notification;

  void notify(People people) {
    switch (people.getTypeNotification()) {
      case TypeNotification.EMAIL:
        notification = NotificationEmail();
        break;
      case TypeNotification.SMS:
        notification = NotificationSMS();
        break;
      case TypeNotification.PUSH_NOTIFICATION:
        notification = NotificationPush();
        break;
      default:
        print('Pessoa sem tipo de notificação');
        return;
    }

    if (notification != null) {
      // Exclamação Afirma com certeza que o objeto não é nulo
      notification!.sendNotification(people);
    }
  }
}
