import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(20),
       // width: double.infinity,
       alignment: Alignment.center,
       //color: Colors.amber,

       child: Text(
        "Hello Container!",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}