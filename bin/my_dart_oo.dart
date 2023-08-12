// import 'package:my_dart_oo/classes/Legal_People.dart';
// import 'package:my_dart_oo/classes/Physical_People.dart';
// import 'package:my_dart_oo/enums/type_notification.dart';
// import 'package:my_dart_oo/services/send_notification.dart';

// import 'package:my_dart_oo/exceptions/exception.dart';

import 'package:my_dart_oo/execute/my_dart_exec.dart' as my_dart_exec;

void main(List<String> arguments) {
  // var physicalPeople = PhysicalPeople(
  //   'Felipe',
  //   'Rua 1',
  //   '22222222222',
  //   typeNotification: TypeNotification.EMAIL,
  // );
  // print(physicalPeople);

  // var legalPeople = LegalPeople('Operative', 'Rua Dr. Gurgel', '1111111111');
  // print(legalPeople);

  // SendNotification sendNotification = SendNotification();

  // sendNotification.notify(physicalPeople);

  // sendNotification.notify(legalPeople);

  // var exception = Exception();

  // exception.exceptionHandling();

  my_dart_exec.execute();
}
