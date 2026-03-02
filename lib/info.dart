import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  // List of dropdown options
  final List<String> items = ["Definition", "Uses", "Examples"];
  final List<String> opts=["stack","container","sizedBox","BottomNavigationBar","Listview","SingleChildScrollView"];
  String message="";
  // Currently selected value
  String? selectedItem;
  String? selectedOpt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Info"),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          fontSize: 30, 
          fontWeight: FontWeight.bold
        ),
        centerTitle: true,
      ),


      body:SingleChildScrollView(
        child:Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            

            // Dropdown Button
            DropdownButton<String>(
              hint: const Text("Select Info"),
              value: selectedItem,
              dropdownColor: Colors.amber,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: const TextStyle(fontSize: 20)),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
            //
           SizedBox(height: 30),

            //Another dropdown
            DropdownButton<String>(
              hint: Text("widgets"),
              value: selectedOpt,
              dropdownColor: Colors.blue,
              items: opts.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String?value){
                setState(() {
                  selectedOpt=value;
                });
              }),

            const SizedBox(height: 30),

          //Image.asset('assets/webpageimage.png'),
          Image.network('https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp',
          width: 600,
          height: 600,
          fit: BoxFit.cover,),

          Text(message,
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.lightBlue),),

             
            // // Display selected option
            // Text(
            //   selectedItem != null 
            //     ? "You selected: $selectedItem" 
            //     : "Please select an option",
            //   style: const TextStyle(fontSize: 22),
            // ),
          ],
        ),
      ),
      ),
      bottomNavigationBar:Padding(
        padding: EdgeInsets.all(20),
        
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text("Submit"),
          onPressed: (){
            setState(() {
              message="Page submitted successfully";
            });
          }),
        ) ,
    );
  }
}