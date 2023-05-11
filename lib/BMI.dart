import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Result.dart';
import 'package:flutter_application_1/calc.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

enum gender {
  male,
  female,
}

class _BmicalcState extends State<Bmicalc> {
  int i = 178;
  int a = 19;
  int w = 72;
  bool? onpress;
  gender? selectedgender;
  double calc = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 254, 254),
        appBar: AppBar(
          toolbarHeight: 70,
          title: Center(
            child: Text(
              "BMI Calculator",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = gender.male;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: selectedgender == gender.male
                                ? Colors.black
                                : Color.fromARGB(255, 21, 49, 73),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = gender.female;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: selectedgender == gender.female
                                ? Colors.black
                                : Color.fromARGB(255, 21, 49, 73),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text("Female",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 21, 49, 73),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height:",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            i.toString(),
                            style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        min: 120,
                        max: 220,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.black,
                        value: i.toDouble(),
                        onChanged: (double newVal) {
                          setState(() {
                            i = newVal.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 21, 49, 73),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Weight",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              w.toString(),
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FloatingActionButton(//4
                                     heroTag: UniqueKey(),

                                      onPressed: () {
                                        setState(() {
                                          w++;
                                        });
                                      },
                                      child: Icon(Icons.add)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FloatingActionButton(//1
                                                                         heroTag: UniqueKey(),

                                      onPressed: () {
                                        setState(() {
                                          w--;
                                          // runApp(bmicalc());
                                        });
                                      },
                                      child: Icon(Icons.remove)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 21, 49, 73),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                            ),
                            Text(
                              a.toString(),
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FloatingActionButton(//2
                                                                        heroTag: UniqueKey(),

                                      onPressed: () {
                                        setState(() {
                                          a++;
                                        });
                                      },
                                      child: Icon(Icons.add)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FloatingActionButton(//3
                                                                         heroTag: UniqueKey(),
                                      onPressed: () {
                                        setState(() {
                                          a--;
                                        });
                                      },
                                      child: Icon(Icons.remove)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                child: MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    CalculateBMI calculateBMI = CalculateBMI(
                      height: i,
                      weight: w,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Resultspage(
                            bmiresult: calculateBMI.calculateBMI(),
                            result: calculateBMI.getResult(),
                            message: calculateBMI.message(),
                          );
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
