import 'package:flutter/material.dart';
import 'statcard.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('STATS', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildToggle("Day", 0),
                buildToggle("Week", 1),
                buildToggle("Month", 2),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: selectedTab == 0
                ? buildGrid()
                : Center(
                    child: Text(
                      selectedTab == 1
                          ? "You clicked Week"
                          : "You clicked Month",
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildToggle(String text, int index) {
    bool isSelected = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: const [
          StatCard(
              title: "Heart",
              value: "124 bpm",
              color: Colors.red,
              icon: Icons.favorite),
          StatCard(
              title: "Sleep",
              value: "8h 42m",
              color: Colors.purple,
              icon: Icons.nightlight),
          StatCard(
              title: "Calories",
              value: "583 kcal",
              color: Colors.orange,
              icon: Icons.local_fire_department),
          StatCard(
              title: "Steps",
              value: "16,741",
              color: Colors.cyan,
              icon: Icons.directions_walk),
        ],
      ),
    );
  }
}