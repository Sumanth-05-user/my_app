import 'package:flutter/material.dart';

class Dismissible1 extends StatefulWidget {
  const Dismissible1({super.key});

  @override
  State<Dismissible1> createState() => _Dismissible1State();
}

class _Dismissible1State extends State<Dismissible1> {

  List<String> items=["Apple","Banana","Orange","Grapes","Mango"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Widget'),
        titleTextStyle: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
             Expanded(
               child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context,index){
                  return Dismissible(
                    key: Key(items[index]),
                    background: Container(
                      color: Colors.red,
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.delete,color: Colors.white,),
                    ),
                    onDismissed: (direction){
                      setState(() {
                        items.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content:Text('Item ${index+1} Deleted')),
                        );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text(items[index]),
                        ),
                      ),
                    ),
                     );
                }
                ),
             ),
        ],
      ),
    );
  }
}