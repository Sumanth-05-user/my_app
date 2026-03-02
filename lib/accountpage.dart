import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/signin.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: SizedBox(
            width: 600,
            height: 550,

            child: Center(
              // child: Center(
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(height: 25),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person_4_outlined),
                  ),
                  SizedBox(height: 28),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('r[azAZ]')),
                    ],
                    decoration: InputDecoration(
                      labelText: 'USERNAME',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 28),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL ADDRESS',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelText: 'MOBILE NUMBER',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 28),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 25),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.amber),
                    ),
                    onPressed: () {
                      message = "Account Created Successfull";
                    },

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('SUBMIT'),
                        SizedBox(width: 5),
                        Icon(Icons.output_outlined),

                        //Color(Colors.blue);
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        // Text('Sign in',style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}
