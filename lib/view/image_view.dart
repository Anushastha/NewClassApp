import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Viewer'),
        centerTitle: true,
      ),
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(800),
                child: Image.asset('assets/images/rose.jpg'),
              ),
              Image.asset('assets/images/one.jpg'),
              Image.network('https://i.pinimg.com/474x/0e/ae/a6/0eaea6831cf4b00e4a92d5ea194c499f.jpg')
            ],
          ),
        ),
      ),
    );
  }
}
