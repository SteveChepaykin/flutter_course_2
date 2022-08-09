import 'package:flutter/material.dart';

class ProfileClass {
  late int age;
  late String name;
  late String phone;
  late IconData profileIcon;
  late bool status;

  ProfileClass({required this.age, required this.name, required this.phone, required this.profileIcon}) {
    status = false;
  }

  void changeStatus() {
    status = !status;
  }
}