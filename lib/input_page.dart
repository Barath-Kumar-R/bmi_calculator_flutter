import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/reusable_widget.dart';
import 'package:bmi_calculator_flutter/icon_widget.dart';
import 'package:bmi_calculator_flutter/button_functions.dart';

class InputPage extends StatefulWidget {
  InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          gendercolor(1);
                        },
                      );
                    },
                    child: reusable_widget(
                        color: malecolor,
                        cardchild: icon_design(
                          icon: (Icons.male),
                          label: 'Male',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          gendercolor(2);
                        },
                      );
                    },
                    child: reusable_widget(
                        color: femalecolor,
                        cardchild: icon_design(
                          icon: (Icons.female),
                          label: 'Female',
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusable_widget(
                    color: Color(0xB0959595),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Height',
                          style: TextStyle(fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          max: 220,
                          min: 120,
                          activeColor: Colors.green,
                          // overlayColor: Colors.red,
                          inactiveColor: Colors.green.shade900,
                          onChanged: (double newvlalue) {
                            print(newvlalue);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable_widget(
                    color: Color(0xB0959595),
                  ),
                ),
                Expanded(
                  child: reusable_widget(
                    color: Color(0xB0959595),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  int get newMethod => height;
}
