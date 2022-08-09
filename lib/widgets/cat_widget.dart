import 'package:flutter/material.dart';
import 'package:flutter_course_2/classes/cat_class.dart';

class CatWidget extends StatelessWidget {
  CatClass cat;
  CatWidget({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.pets_outlined),
        Text(cat.name),
        Text(cat.age.toString()),
        Text(cat.breed),
      ],
    );
  }
}