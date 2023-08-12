import 'dart:convert';
import 'dart:io';

class Exception {
  void exceptionHandling() {
    print('Digite um número: ');
    var line = stdin.readLineSync(encoding: utf8);

    try {
      double number = double.parse(line ?? '');
      print(number);
    } catch (error) {
      print('Número inválido $line');
    } finally {
      print('Executando Finally !');
    }
  }
}
