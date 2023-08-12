import 'dart:io';

import 'package:my_dart_oo/classes/Student.dart';
import 'package:my_dart_oo/classes/console_utils.dart';
import 'package:my_dart_oo/exceptions/invalid_name_exception.dart';

void execute() {
  print("Bem-vindo ao sistema de notas!");
  String name = ConsoleUtils.readStringWithText("Digite o nome do aluno:");
  try {
    if (name.trim() == '') {
      throw InvalidNameException();
    }
  } on InvalidNameException {
    name = 'Nome padrão';
    print(InvalidNameException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var student = Student(name);
  double? note;
  do {
    note = ConsoleUtils.readDoubleWithTextAndExitValue(
        'Digite a nota ou S para sair', 'S');

    if (note != null) {
      student.addNote(note);
    }
  } while (note != null);

  print("As notas digitadas foram: ${student.getNotes()}");
  print("A média do aluno foi ${student.returnAverage()}");
  if (student.approved(7)) {
    print('O Aluno ${student.getName()} foi aprovado');
  } else {
    print('O Aluno ${student.getName()} foi reprovado');
  }
}
