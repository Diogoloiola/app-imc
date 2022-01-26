import 'package:flutter/material.dart';
import 'package:imc/utils/my_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MediaQueryData queryData;
  double _currentSliderValue = 20;
  double _weight = 0;
  double _height = 0;

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
                    onTap: () {},
                    child: Container(
                      width: 185,
                      height: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: MyColors.blueOne),
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
                    onTap: () {},
                    child: Container(
                      width: 185,
                      height: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: MyColors.blueOne),
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
                width: double.infinity,
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
              GestureDetector(
                  onTap: () {},
                  child: Container(
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
                        const Text(
                          '59',
                          style: TextStyle(
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
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                size: 25,
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
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                size: 25,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Container(
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
                        const Text(
                          '120',
                          style: TextStyle(
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
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                size: 25,
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
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                size: 25,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ]),
            Container(
              width: double.infinity,
              height: 64,
              margin: const EdgeInsets.only(top: 10),
              color: MyColors.pink,
              child: const Center(
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
