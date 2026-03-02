import 'package:flutter/material.dart';

class Listvb extends StatefulWidget {
  const Listvb({super.key});

  @override
  State<Listvb> createState() => _ListvbState();
}

class _ListvbState extends State<Listvb> {
  //final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder Demo')),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(title: Text("${index + 1}"));
        },
      ),
      // body: ListView(
      //   children: [
      //     Text("Item1"),
      //     Text("Item2"),
      //     Text("Item3"),
      //   ],
      // ),
    );
  }
}
