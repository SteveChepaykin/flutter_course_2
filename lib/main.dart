import 'package:flutter/material.dart';
import 'package:flutter_course_2/classes/cat_class.dart';
import 'package:flutter_course_2/classes/profile_class.dart';
import 'package:flutter_course_2/widgets/cat_widget.dart';
import 'package:flutter_course_2/widgets/profile_widget.dart';
import 'package:flutter_course_2/creatures_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  ProfileClass profile = ProfileClass(
    age: 78,
    name: 'Серега',
    phone: '85556667799',
    profileIcon: Icons.person,
  );
  CatClass cat = CatClass(
    age: 2,
    name: 'Гав',
    breed: 'Рыжий',
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileWidget(profile: profile),
          ...CreaturesController().cats.map((e) {
            return CatWidget(cat: e);
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: CreaturesController().addAgeToAll,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
