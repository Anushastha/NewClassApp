import 'package:flutter/material.dart';

class GridViewView extends StatelessWidget {
  const GridViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid view'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
              child: Card(
                color: Colors.purple[200],
                child: Center(
                  child: Text(
                    '$i',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ),
            ),
          }
        ],
      ),
    );
  }
}
