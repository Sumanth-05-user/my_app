import 'package:flutter/material.dart';

class Badge1 extends StatefulWidget {
  const Badge1({super.key});

  @override
  State<Badge1> createState() => _MyWidgetState();
}

//Align widget
//Badge widget
class _MyWidgetState extends State<Badge1> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Badge"),
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.cyanAccent,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Badge(
              label: Text("Notification"),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    text = "notification clicked";
                  });
                },
                icon: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Text("Welcome Badge"),
          Align(
            alignment: AlignmentGeometry.center,
            child: Text(
              "Aligned Text",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // child:Text(text,
            // style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold ),),
          ),

          Text(
            '${text}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
