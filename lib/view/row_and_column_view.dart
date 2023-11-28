import 'package:flutter/material.dart';

class RowAndColumnView extends StatefulWidget {
  const RowAndColumnView({super.key});

  @override
  State<RowAndColumnView> createState() => _RowAndColumnViewState();
}

class _RowAndColumnViewState extends State<RowAndColumnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Rows and Column'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height*.1,
                  width: MediaQuery.of(context).size.height*.1,
                  color: Colors.blue,
                  child: const Align(
                    child: Text(
                        'Container 1',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height*.1,
                  width: MediaQuery.of(context).size.height*.1,
                  color: Colors.red,
                    child: const Align(
                      child: Text(
                        'Container 2',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height*.1,
                  width: MediaQuery.of(context).size.height*.1,
                  color: Colors.blue,
                  child: const Align(
                    child: Text(
                      'Container 3',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue[900],
              child: const Align(
                child: Text(
                  'Container 1',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Align(
                child: Text(
                  'Container 2',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[900],
              child: const Align(
                child: Text(
                  'Container 3',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
