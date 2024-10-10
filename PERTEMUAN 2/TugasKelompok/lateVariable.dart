class Person {
  late String name;
  late int age;

  void setName(String newName) {
    name = newName;
  }

  void setAge(int newAge) {
    age = newAge;
  }

  void printInfo() {
    print('Nama: $name, Usia: $age');
  }
}

void main() {
  var person = Person();

  // Mengisi nilai setelah objek dibuat
  person.setName('King Boozm');
  person.setAge(21);

  person.printInfo(); // Output: Nama:, Usia:
}