import 'package:flutter/material.dart';
import 'package:imc/utils/calculator.dart';
import 'package:imc/utils/chose_color.dart';
import 'package:imc/utils/my_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/utils/screen_arguments.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MediaQueryData queryData;
  double _currentSliderValue = 20;
  int _weight = 50;
  int _age = 120;
  bool currentSex = false;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        backgroundColor: MyColors.dark,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MyColors.dark,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        currentSex = false;
                      });
                    },
                    child: Container(
                      width: 185,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: chooseColor(
                              !currentSex, [MyColors.dark, MyColors.blueOne])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.mars,
                            size: 90,
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 10, top: 15),
                              child: const Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ))
                        ],
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        currentSex = true;
                      });
                    },
                    child: Container(
                      width: 185,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: chooseColor(
                              currentSex, [MyColors.dark, MyColors.blueOne])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.venus,
                            size: 90,
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 10, top: 15),
                              child: const Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ))
                        ],
                      ),
                    )),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: MyColors.blueOne),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$_currentSliderValue CM",
                          style: const TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Slider(
                      value: _currentSliderValue,
                      max: 100,
                      divisions: 10,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    )
                  ],
                )),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: 185,
                height: 180,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: MyColors.blueOne),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10, top: 15),
                        child: const Text(
                          'weight',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    Text(
                      '$_weight',
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              color: MyColors.red),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _weight--;
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.minus,
                              size: 25,
                            ),
                          ),
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
                                color: MyColors.red),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                size: 25,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 185,
                height: 180,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: MyColors.blueOne),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10, top: 15),
                        child: const Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    Text(
                      '$_age',
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(left: 20),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
                                color: MyColors.red),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _age--;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                size: 25,
                              ),
                            )),
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              color: MyColors.red),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _age++;
                              });
                            },
                            child: const Icon(
                              FontAwesomeIcons.plus,
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
            GestureDetector(
              onTap: () {
                Calculator calculator =
                    Calculator(_currentSliderValue / 100, _weight);

                double imc = calculator.calculate();

                Navigator.of(context).pushNamed('/result',
                    arguments:
                        ScreenArguments(calculator.description(imc), imc));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                margin: const EdgeInsets.only(top: 10),
                color: MyColors.pink,
                child: const Center(
                  child: Text(
                    'Calcular',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
