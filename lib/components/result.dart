import 'package:flutter/material.dart';
import 'package:imc/utils/my_colors.dart';
import 'package:imc/utils/screen_arguments.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    print(args.description);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
        backgroundColor: MyColors.dark,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MyColors.dark,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Your result',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              margin: const EdgeInsets.only(top: 50),
              color: const Color(0xff1d1e30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: Text(
                        args.description.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff24d876)),
                      )),
                  Text(
                    args.value.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                margin: const EdgeInsets.only(top: 10),
                color: MyColors.red,
                child: Center(
                  child: Text(
                    're-calculate'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
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
