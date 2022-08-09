import 'package:flutter/material.dart';
import 'package:flutter_course_2/classes/cat_class.dart';

class CatWidget extends StatefulWidget {
  CatClass cat;
  CatWidget({Key? key, required this.cat}) : super(key: key);

  @override
  State<CatWidget> createState() => _CatWidgetState();
}

class _CatWidgetState extends State<CatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.pets_outlined),
        Text(widget.cat.name),
        Text(widget.cat.age.toString()),
        Text(widget.cat.breed),
        ElevatedButton(
          onPressed: () => setState(() {
            widget.cat.addAge();
          }),
          child: const Text('add Age'),
        ),
      ],
    );
  }
}
