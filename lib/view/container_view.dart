import 'package:flutter/material.dart';
import 'package:newclassapp/app/app.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Colors.lightGreenAccent,
            //   border: Border.all(
            //     color: Colors.pinkAccent,
            //     width: 3,
            //   ),
            // ),
            // //alignment: Alignment.bottomRight,
            // alignment: const Alignment(1,0),
            // height: 200,
            // width: 200,
            alignment: Alignment.centerRight,
            child: const Text(
              'Hello',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
