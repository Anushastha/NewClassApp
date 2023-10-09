import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({Key? key});

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int _randomNumber1 = 0;
  int _randomNumber2 = 0;
  int _score = 0; // Initialize score to zero
  int _chances = 0; // Initialize chances to zero

  final Random _random = Random();

  bool _buttonsEnabled = true;

  void _generateRandomNumbers() {
    if (_chances >= 10) {
      return; // Do not generate random numbers if chances reach 10
    }
    int newRandomNumber1;
    int newRandomNumber2;
    do {
      newRandomNumber1 =
          _random.nextInt(100); // Generate a random number between 0 and 99

      newRandomNumber2 = _random.nextInt(100); // Generate another random number
    } while (newRandomNumber1 == newRandomNumber2);

    setState(() {
      _randomNumber1 = newRandomNumber1;

      _randomNumber2 = newRandomNumber2;
    });
  }

  void _calculateScore(int number1, int number2) {
    if (_chances >= 10) {
      return; // Do not calculate score if chances reach 10
    }
    // Calculate the score based on the difference between the two random numbers
    if (number1 > number2) {
      _score++;
    }
    _chances++;
    // If chances reach 10, disable the buttons
    if (_chances == 10) {
      _buttonsEnabled = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Game'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _buttonsEnabled
                    ? () {
                  _generateRandomNumbers();

                  _calculateScore(_randomNumber1, _randomNumber2);
                }
                    : null,
                child: Text(
                  '$_randomNumber1',
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: _buttonsEnabled
                    ? () {
                  _generateRandomNumbers();

                  _calculateScore(_randomNumber1, _randomNumber2);
                }
                    : null,
                child: Text(
                  '$_randomNumber2',
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Result: $_score/10',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Your Score: $_score',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _chances = 0;

                _score = 0;

                _buttonsEnabled = true; // Enable buttons when restarting
              });
            },
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
