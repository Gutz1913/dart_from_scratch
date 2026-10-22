import '../Shared/DateUtilities.dart';
import '../Shared/PrintExtension.dart';

void main() {
  print('¡Hola! Bienvenido al calculador de años.');
  var inputName = PrintExtension.getString('Escribe tu nombre: ');
  print('Un gusto conocerte $inputName');
  var birthdateInput = PrintExtension.getString('Escribe tu fecha de nacimiento en formato dd/mm/aaa: ');
  var dateConverted = DateUtilities.convertToDateTime(birthdateInput);
  if (dateConverted == null) {
    print('La fecha de nacimiento es inválida, nos enviaste $birthdateInput');
    return;
  }

  var person = Person (
    name: inputName,
    birthdate: dateConverted,
    age: DateTime.now().year - dateConverted.year
  );

  print('Tu nombre es: ${person.name}');
  print('Tu fecha de nacimiento es: ${person.birthdate}');
  print('tu edad es ${person.age} años!');
}

class Person {
  final String? name;
  final DateTime? birthdate;
  final int? age;
  Person({this.name, this.birthdate, this.age});
}
