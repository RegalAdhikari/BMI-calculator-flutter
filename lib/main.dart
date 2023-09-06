import 'package:bmicalculator/mainsage.dart';
import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainSage(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int index = 0;
  String color = "color";
  Color colorf = Colors.grey;
  Color colorm = Colors.blue;
  void _handleTap(index) {
    setState(() {
      if (index == 0) {
        colorm = Colors.blue;
        colorf = Colors.grey;
      }
      if (index == 1) {
        colorm = Colors.grey;
        colorf = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.line_axis_rounded),
          title: const Center(
            child: Text(
              "BMI calculator",
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 0.0,
          backgroundColor: const Color(0xfffafafa),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: AnimatedButtonBar(
                radius: 32.0,
                padding: const EdgeInsets.all(30.0),
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                elevation: 010,
                borderColor: Colors.white,
                borderWidth: 1,
                innerVerticalPadding: 10,
                children: [
                  ButtonBarEntry(
                      onTap: () => _handleTap(0),
                      child: Text(
                        "Male",
                        style: TextStyle(color: colorm),
                      )),
                  ButtonBarEntry(
                    onTap: () => _handleTap(1),
                    child: Text(
                      "Female",
                      style: TextStyle(color: colorf
                          //_active ? Colors.lightGreen[700] : Colors.grey[600],

                          ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 248, 248),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: List.filled(
                        1, const BoxShadow(color: Colors.grey, blurRadius: 12),
                        growable: false)),
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 23, height: 3),
                    ),
                    const Text("Enter your height in centimeters"),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tap to enter',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 248, 248),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: List.filled(
                        1, const BoxShadow(color: Colors.grey, blurRadius: 12),
                        growable: false)),
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 23, height: 3),
                    ),
                    const Text("Enter your height in centimeters"),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tap to enter',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
              ),
            )
          ],
        ));
  }
}
