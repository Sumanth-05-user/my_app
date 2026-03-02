import 'package:flutter/material.dart';

class Cpi extends StatefulWidget {
  const Cpi({super.key});

  @override
  State<Cpi> createState() => _CpiState();
}

class _CpiState extends State<Cpi> {

  final double progressValue=0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // keeps it centered nicely
        children: const [
          // CircularProgressIndicator(),
          // SizedBox(height: 20), // space between indicator and text
          // Text(
          //   "Loading...",
          //   style: TextStyle(fontSize: 16,color: Colors.amber),
          // ),
           
           

        ],
      ),
    );
  }
}