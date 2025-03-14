// 1. Создайте класс Student с final полями firstName, lastName и конструктором const.
// 2. Добавьте в класс конструктор, инициализацию всех свойств.
// 3. Добавьте в класс метод, getter который красиво форматирует Student для печати полей firstName и lastName (должны возвращать с заглавной буквы)
// 4. Переопределите в классе Student метод toString для печати класса

void main(List<String> arguments) {
  var st = Student("firstName", "lastName");
  print(st);
}

class Student {
  final String firstName;
  final String lastName;

  const Student(this.firstName, this.lastName);

  const Student.all({required this.firstName, required this.lastName});

  String getName() {
    return '${firstName[0].toUpperCase()}${firstName.substring(1).toLowerCase()} '
        '${lastName[0].toUpperCase()}${lastName.substring(1).toLowerCase()}';
  }

  @override
  String toString() {
    return getName();
  }
}
