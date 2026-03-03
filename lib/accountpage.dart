import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:my_app/signin.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String message = "";

  TextEditingController unameCtrl=TextEditingController();

  

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

      body:Column(
        children: [
           SizedBox(height: 30,),
          CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person_2_outlined,color: Colors.white,size: 35,),
                    ),
                    SizedBox(height: 28),

        SizedBox(height: 20,),
      
      
      
       Center(
        
        

        child: Card(
          child: SizedBox(
            width: 450,
            height: 460,

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                // child: Center(
                child: Column(
                  //  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
              
                  children: [
                    SizedBox(height: 38),
                    Row(
                      children: [
                        Text('USERNAME',style: TextStyle(color: Colors.blue,fontSize: 12),)
                      ],
                    ),
                    TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('r[a-zA-Z]')),
                      ],
                      decoration: InputDecoration(
                       
                       // labelText: 'USERNAME',
                        border: OutlineInputBorder(),
                      ),
                    ),
              
                    SizedBox(height: 28),
                    Row(
                      children: [
                        Text('EMAIL ADDRESS',style: TextStyle(color: Colors.blue,fontSize: 12),)
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                       
                      //  labelText: 'EMAIL ADDRESS',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                      Row(
                      children: [
                        Text('MOBILE NUMBER',style: TextStyle(color: Colors.blue,fontSize: 12),)
                      ],
                    ),
                    TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                       
                       // labelText: 'MOBILE NUMBER',
                        border: OutlineInputBorder(),
                      ),
                    ),
              
                    SizedBox(height: 28),
                     Row(
                      children: [
                        Text('PASSWORD',style: TextStyle(color: Colors.blue,fontSize: 12),)
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        
                       // labelText: 'PASSWORD',
                        border: OutlineInputBorder(),
                      ),
                    ),
              
                   
                  ],
                ),
              ),
            ),
            
          ),
        ),
        
      ),
       SizedBox(height: 35),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(0))),
                        backgroundColor: WidgetStatePropertyAll(Colors.amber),
                      ),
                      onPressed: () {
                        setState(() {
                           message = "Account Created Successfully";
                        });
                       
                      },
              
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         
                          Text('SUBMIT',style: TextStyle(color: Colors.black),),
                          SizedBox(width: 5),
                          Icon(Icons.output_outlined,color: Colors.black,),
              
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
                              style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                            ),
                          ),
                          // Text('Sign in',style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                         Text(message,style: TextStyle(fontSize: 25,color: Colors.green),),
                      ],
                    )
        ],
      ),
    );
  }
}
