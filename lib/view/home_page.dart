import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controllers/controller.dart';
import 'common_design.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 54, 80),
        title: const Text(
          'Calculator with GetX',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 4, 54, 80),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Obx(() => Text(
                      CalculatorControllers.formularText.value,
                      style: ContainerStyles.commonTextStyle,
                    )),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Obx(() => Text(
                    CalculatorControllers.answerText.value,
                    style: ContainerStyles.commonTextStyle,
                  )),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 3, 176, 214),
              thickness: 1.0,
            ),
            Expanded(
              flex: 5,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('C');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '()',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('%');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '%',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('/');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '/',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('1');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      //style: CalculatorButton.commonNumberButtonTextStyle(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('2');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('3');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('X');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      'X',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('4');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('5');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('6');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '6',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('+');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '+',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('7');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '7',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('8');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '8',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('8');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '9',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('-');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '.',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('0');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('000');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '000',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CalculatorControllers.handleClick('=');
                    },
                    style: CalculatorButton.commonButtonStyle,
                    child: const Text(
                      '=',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
