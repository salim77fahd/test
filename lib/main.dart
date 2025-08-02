import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Quizzler()));

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizzlerPage(),
        ),
      ),
    );
  }
}

class QuizzlerPage extends StatefulWidget {
  const QuizzlerPage({super.key});

  @override
  State<QuizzlerPage> createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  List<bool> Answer = [false, true, true];
  List<Icon> checkIcons = [];
  List<String> Queition = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  Queition[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      checkIcons.add(Icon(Icons.check, color: Colors.green));
                      i++;
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      checkIcons.add(Icon(Icons.close, color: Colors.red));
                      i--;
                    });
                  },
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Row(children: checkIcons),
        ],
      ),
    );
  }
}
