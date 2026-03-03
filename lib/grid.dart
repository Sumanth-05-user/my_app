import 'package:flutter/material.dart';

class Gridbld extends StatefulWidget {
  const Gridbld({super.key});

  @override
  State<Gridbld> createState() => _GridbldState();
}

class _GridbldState extends State<Gridbld> {
  int _selectedIndex = 0;

  final List<Color> boxColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      // Stay on same page (Home)
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(index: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "STATS",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Day"),
              Tab(text: "Week"),
              Tab(text: "Month"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: boxColors[index % boxColors.length],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Item ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int index;

  const SecondPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    String message = "";

    if (index == 1) {
      message = "Bar Chart Page";
    } else if (index == 2) {
      message = "Lock Page";
    } else if (index == 3) {
      message = "Profile Page";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page"),
      ),
      body: Center(
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}