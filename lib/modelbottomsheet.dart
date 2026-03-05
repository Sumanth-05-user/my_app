import 'package:flutter/material.dart';

class Mbsheet extends StatefulWidget {
  const Mbsheet({super.key});

  @override
  State<Mbsheet> createState() => _MbsheetState();
}

class _MbsheetState extends State<Mbsheet> {

  void _showModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (BuildContext context) {
        return Container(
          height: 300,
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'This is a modal bottom sheet!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      Row(
                        children: [
                               Icon(Icons.facebook_outlined, size: 35),
                               SizedBox(width: 10,),
                               Text('This is FaceBook'),
                        ],
                      ),
                     
                      SizedBox(height: 20),
                      Row(
                        children: [
                               Icon(Icons.message_outlined, size: 35),
                                SizedBox(width: 10,),
                               Text('This is Message'),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                               Icon(Icons.lock_clock_outlined, size: 35),
                                SizedBox(width: 10,),
                               Text('This is Lock'),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 15,),
         Center(
          child: 
              ElevatedButton(
                //style: ButtonStyle(),
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
          ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Bottom Sheet'),
        titleTextStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            backgroundColor: Colors.blue,
          ),
          onPressed: () => _showModelSheet(context),
          child: const Text(
            'Click Here',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}