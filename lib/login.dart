import 'package:flutter/material.dart';
import 'package:my_app/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.amber,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //  backgroundColor: Colors.blue,
              
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
              minimumSize: Size(200, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
