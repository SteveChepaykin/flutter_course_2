import 'package:flutter_course_2/classes/cat_class.dart';

class CreaturesController {
  List<CatClass> cats = [
    CatClass(age: 2, name: 'Гав', breed: 'Рыжий'),
    CatClass(age: 3, name: 'Мяу', breed: 'Белый'),
    CatClass(age: 8, name: 'Тузик', breed: 'Леопардовый'),
  ];

  void addAgeToAll() {
    cats.map((e) {
      return e.addAge();
    });
  }
}
