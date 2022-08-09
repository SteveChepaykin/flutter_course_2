class CatClass {
  late int age;
  late String name;
  late String breed;

  CatClass({required this.age, required this.name, this.breed = 'Белый'});

  CatClass.old({required this.name, this.breed = 'Белый'}) {
    age = 10;
  }

  CatClass.young({required this.name, this.breed = 'Белый'}) {
    age = 1;
  }

  void addAge() {
    age += 1;
  }
}