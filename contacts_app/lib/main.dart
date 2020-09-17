import 'package:contacts_app/ui/contact_page.dart';
import 'package:contacts_app/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: ContactPage(),
    title: "Administrador de contatos",
    debugShowCheckedModeBanner: false,
  ));
}
