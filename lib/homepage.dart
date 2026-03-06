import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'package:my_app/modelbottomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showDialog(BuildContext context)
  {
    showDialog(context: context, 
    builder: (BuildContext context)
    {
      return AlertDialog(
          title: Text('Alert'),
          content: Text('Are you sure to logout'),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
               child: Text('Cancel'),
               ),
               ElevatedButton(
                onPressed:(){
                  Navigator.push(context,
                   MaterialPageRoute(builder:(_)=>Loginpage()),
                   );
                },
                 child: Text('Proceed'),
                 ),
          ],
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("This is Home Page",
            style: TextStyle(fontSize: 22)),
            SizedBox(height: 290,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                  ),
                  onPressed: ()=>_showDialog(context),


                  
                    //  ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text('Logout successfull'),
                    //     ),
                    //   );
                  
                   child:Row(
                    mainAxisSize: MainAxisSize.min,
                     children: [
                       Icon(Icons.logout_outlined),
                       SizedBox(width: 10,),
                        Text('Logout',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     ],
                   ),
                  
                   ),
              ],
              
            ),
          ],
          
        ),
        
          
      ),
       
    );
  }
}