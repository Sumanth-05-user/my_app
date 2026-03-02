import 'package:flutter/material.dart';
import 'package:my_app/accountpage.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  int cnt = 0;
  String message = "";
  void _inc() {
    setState(() {
      cnt++;
    });
    // print('Tapped! Counter: $cnt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signin',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
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
                    radius: 30,
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.person_4_outlined),
                  ),
                  SizedBox(height: 28),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL ID',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 28),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    'forget password?',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                     style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      setState(() {
                        message = "Login Successfull";
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('LOGIN'),
                        SizedBox(width: 5),
                        Icon(Icons.output_rounded),

                        //Color(Colors.blue);
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          //style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                          onPressed:(){
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context)=>AccountPage()),
                             );
                          },
                           child: 
                           Text('Create an Account',style: TextStyle(color: Colors.blue),)
                           ),
                        SizedBox(height: 30),
                       
                      ],
                    ),
                  ),
                   Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 25,),
                            Text(
                              message,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                          ],
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
