import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Demo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.amber,
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.amber,
              indicatorWeight: 01,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.blue,
            //  isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.directions_bike_sharp,semanticLabel: 'bike',)),
                Tab(icon: Icon(Icons.directions_boat_filled)),
                Tab(icon: Icon(Icons.directions_car_filled)),
                //Tab(icon: Icon(Icons.directions_car_filled)),
              ],
            ),
          ),

          body: const TabBarView(
            children: [
              Center(child: Icon(Icons.directions_bike, size: 350)),
              Center(child: Icon(Icons.directions_boat, size: 350)),
              Center(child: Icon(Icons.directions_car, size: 350)),
            ],
          ),
        ),
      ),
    );
  }
}
