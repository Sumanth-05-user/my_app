import 'package:flutter/material.dart';
import 'package:my_app/dismissible.dart';
import 'package:my_app/grid.dart';
import 'package:my_app/login.dart';
import 'package:my_app/mediaquery.dart';
import 'package:my_app/modelbottomsheet.dart';
import 'package:my_app/signin.dart';
import 'package:my_app/tabbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
    
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Dismissible1(),
    );
  }
}
