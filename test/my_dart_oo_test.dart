import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_dart_oo/classes/my_tests.dart' as app;
import 'package:my_dart_oo/classes/viacep.dart';
import 'package:test/test.dart';

import 'my_dart_oo_test.mocks.dart';

@GenerateMocks([MockViaCEP])
void main() {
  test('Calcula o valor do produto sem porcentagem', () {
    expect(app.calculateDiscount(1000, 150, false), equals(850));
  });

  test(
      'Calcula o valor do produto sem porcentagem com valor do produto igual a 0',
      () {
    expect(() => app.calculateDiscount(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o valor do produto com porcentagem', () {
    expect(app.calculateDiscount(1000, 15, true), equals(850));
  });

  test('Calcula o valor do produto com desconto zerado com porcentagem', () {
    expect(() => app.calculateDiscount(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Calcula o valor do produto com desconto:', () {
    var valuesToTest = {
      {'value': 1000, 'discount': 150, 'percentage': false}: 850,
      {'value': 1000, 'discount': 15, 'percentage': true}: 850,
    };

    valuesToTest.forEach((values, expected) {
      test('Entrada: $values  Esperado: $expected', () {
        expect(
            app.calculateDiscount(
                double.parse(values['value'].toString()),
                double.parse(values['discount'].toString()),
                values['percentage'] == true),
            equals(expected));
      });
    });
  });

  group(
      'Calculando o valor do produto informando valores zerados, deve gerar erro:',
      () {
    var valuesToTest = {
      {'value': 0, 'discount': 150, 'percentage': false},
      {'value': 1000, 'discount': 0, 'percentage': true}
    };

    for (var values in valuesToTest) {
      test('Entrada: $values', () {
        expect(
            () => app.calculateDiscount(
                double.parse(values['value'].toString()),
                double.parse(values['discount'].toString()),
                values['percentage'] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });

  test('Testar conversão para uppercase', () {
    expect(app.convertToUpperCase('dio'), equals('DIO'));
  });

  test('Testar conversão para uppercase teste 2', () {
    expect(app.convertToUpperCase('dio'), equalsIgnoringCase('dio'));
  });

  test('Valor maior que 50', () {
    expect(app.returnValue(50), greaterThanOrEqualTo(50));
  });

  test('Começa com', () {
    expect(app.convertToUpperCase('dio'), startsWith('D'));
  });

  test('Valor diferente', () {
    expect(app.returnValue(50), isNot(equals((49))));
  });

  test('Retornar CEP', () async {
    MockMockViaCEP mockMockViaCEP = MockMockViaCEP();

    when(mockMockViaCEP.returnCEP('01001000'))
        .thenAnswer((realInvocation) => Future.value({
              "cep": "01001-000",
              "logradouro": "Praça da Sé",
              "complemento": "lado ímpar",
              "bairro": "Sé",
              "localidade": "São Paulo",
              "uf": "SP",
              "ibge": "3550308",
              "gia": "1004",
              "ddd": "11",
              "siafi": "7107"
            }));

    var body = await mockMockViaCEP.returnCEP('01001000');
    expect(body['bairro'], equals("Sé"));
    expect(body['logradouro'], equals("Praça da Sé"));
  });
}

class MockViaCEP extends Mock implements ViaCEP {}
