import 'package:flutter/material.dart';

class Wrap1 extends StatefulWidget {
  const Wrap1({super.key});

  @override
  State<Wrap1> createState() => _Wrap1State();
}

class _Wrap1State extends State<Wrap1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Chip(label: Text("Align")),
                Chip(label: Text("Text")),
                Chip(label: Text("wrap")),
                Chip(label: Text("Icon")),
                Chip(label: Text("AppBar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
