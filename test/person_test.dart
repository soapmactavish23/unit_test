import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/person.dart';

void main() {
  final person =
      Person(name: 'Henrick Nogueira', age: 22, height: 1.77, weigth: 64.4);

  test('O imc deve vir 20.56', () {
    expect(person.imc, 20.56);
  });

  group('isOlder | ', () {
    
    test('Ele é maior de 18 anos', () {
      expect(person.isOlder, true);
    });

    test('Ele tem 18 anos', () {
      Person(name: 'Igor Nogueira', age: 18, height: 1.77, weigth: 80.0);
      expect(person.isOlder, true);
    });

  });
}
