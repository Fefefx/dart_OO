import 'package:my_dart_oo/classes/people_abstract.dart';
import 'package:my_dart_oo/services/send_notification.dart';

abstract class NotificationInterface {
  void sendNotification(People people);
}
