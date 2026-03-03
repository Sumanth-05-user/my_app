import 'package:flutter/material.dart';
import 'package:my_app/accountpage.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  

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
      body: Column(
        children: [
          SizedBox(height: 25),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.amber,
            child: Icon(Icons.person_2_outlined, color: Colors.white,size: 35,),
          ),
          SizedBox(height: 35),
          Center(
            child: Card(
              child: SizedBox(
                height: 330,
                width: 400,

                child: Padding(
                  padding: const EdgeInsets.all(12.0),

                  // child: Center(
                  child: Column(
                    //  mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      SizedBox(
                        height: 300,
                        width: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'EMAIL ADDRESS',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            TextField(
                             // controller: emailCtrl,
                              decoration: InputDecoration(
                                // labelText: 'EMAIL ID',
                                border: OutlineInputBorder(),
                              ),
                            ),

                            SizedBox(height: 28),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'PASSWORD',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            TextField(
                              //controller: passwordCtrl,
                              obscureText: true,
                              decoration: InputDecoration(
                                //labelText: 'PASSWORD',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 38),
          Text(
            'forget password?',

            style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              ),
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
            ),
            onPressed: () {
              setState(() {
                // if (emailCtrl.text.isEmpty && passwordCtrl.text.isEmpty) {
                //   message = "Please enter Email and Password";
                // } else if (emailCtrl.text.isEmpty) {
                //   message = "Please enter your Email";
                // } else if (passwordCtrl.text.isEmpty) {
                //   message = "Please enter your Password";
                // } else {
                //   message = "Login Successful";
                // }
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('LOGIN', style: TextStyle(color: Colors.white)),
                SizedBox(width: 5),
                Icon(Icons.output_rounded, color: Colors.white),

                //Color(Colors.blue);
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),

              TextButton(
                //style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
        //  Text(message, style: TextStyle(fontSize: 20, color: Colors.green)),
        ],
      ),
    );
  }
}
