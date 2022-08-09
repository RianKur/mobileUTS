import 'package:flutter/material.dart';
import 'package:projectuts/pages/home_pages.dart';

void main() => runApp(MyApp()); //function yang digunakan untuk run, debug, dan profile aplikasi

class MyApp extends StatelessWidget { //deklarasi child class MyApp dengan parent class mengimplementasikan StatelesWidget
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey, //deklarasi untuk warna/tema yang digunakan pada bagian header aplikasi
      ),
      home: const MyHomePage(title: 'Kulineria'), //deklarasi title untuk nama aplikasi pada MaterialApp
    );
  }
}