import 'package:flutter/material.dart';
import 'package:my_app/form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Container(
        // Background image applied here
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/webpageimage.png'),
            fit: BoxFit.cover, // Adjusts how the image fits in the container
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                message,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.red)),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyWidget()),);
                  setState(() {
                    message = "Button Clicked!";
                  });
                },
                child: const Text(
                  "Click",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}