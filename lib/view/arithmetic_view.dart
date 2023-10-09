import 'package:flutter/material.dart';

import '../app/routes/app_route.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first + second;

    Navigator.pushNamed(
      context,
      AppRoute.outputRoute,
      arguments: result,
    );
  }
  sub() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first - second;

    Navigator.pushNamed(
      context,
      AppRoute.outputRoute,
      arguments: result,
    );
  }
  mult() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first * second;

    Navigator.pushNamed(
      context,
      AppRoute.outputRoute,
      arguments: result,
    );
  }
  div() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first ~/ second;

    Navigator.pushNamed(
      context,
      AppRoute.outputRoute,
      arguments: result,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: firstController,
                    decoration: const InputDecoration(
                      labelText: 'First Number',
                    ),
                  ),
                  TextFormField(
                    controller: secondController,
                    decoration: const InputDecoration(
                      labelText: 'Second Number',
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          add();
                        }
                      },
                      child: const Text('Addition'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          sub();
                        }
                      },
                      child: const Text('Subtraction'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          mult();
                        }
                      },
                      child: const Text('Multiplication'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          div();
                        }
                      },
                      child: const Text('Division'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}