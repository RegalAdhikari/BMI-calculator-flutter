import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class MainSage extends StatefulWidget {
  const MainSage({super.key});

  @override
  State<MainSage> createState() => _MainSageState();
}

class _MainSageState extends State<MainSage> {
  int index = 0;
  String color = "color";
  Color colorf = Colors.grey;
  Color colorm = Colors.blue;
  dynamic bmi = " dont press calculate";
  dynamic height = 0;
  dynamic weight = 0;
  void _handleBmi(height, weight) {
    setState(() {
      bmi = height;
    });
  }

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
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            child: animatedButtonBar(),
          ),
          Container(
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
          Container(
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
                  "Weight",
                  style: TextStyle(fontSize: 23, height: 3),
                ),
                const Text("Enter your weight in kilograms"),
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
          Container(
              child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  child: const Text('Calculate'),
                  onPressed: () {
                    _handleBmi(height, weight);
                  }),
            ],
          )),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 248, 248),
                borderRadius: BorderRadius.circular(20),
                boxShadow: List.filled(
                    1, const BoxShadow(color: Colors.grey, blurRadius: 12),
                    growable: false)),
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(
                  "Your BMI is: ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(bmi)
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Center(
        child: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AnimatedButtonBar animatedButtonBar() {
    return AnimatedButtonBar(
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
    );
  }
}
