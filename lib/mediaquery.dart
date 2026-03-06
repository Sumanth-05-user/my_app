import 'package:flutter/material.dart';

class MediaQ extends StatefulWidget {
  const MediaQ({super.key});

  @override
  State<MediaQ> createState() => _MediaQState();
}

class _MediaQState extends State<MediaQ> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

    return Scaffold(
      body: screenWidth < 600
          ? buildListView()
          :
            // Expanded(
            //   child: buildListView(),
            // ),
            Expanded(child: buildGridView()),
    );
  }

  Widget buildListView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile View"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Card(child: ListTile(title: Text('Item ${index + 1}')));
        },
      ),
    );
  }

  Widget buildGridView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desktop View"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue[((index % 9) + 1) * 100],
            child: Center(
              child: Text(
                'Grid ${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
