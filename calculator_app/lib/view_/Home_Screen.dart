import 'package:calculator_app/View_Model/Calculator_provider.dart';
import 'package:calculator_app/view_/My_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 178, 148, 230),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Consumer<CalculatorProvider>(
                        builder: (context, model, child) {
                          return Text(
                            model.userInput,
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Consumer<CalculatorProvider>(
                        builder: (context, model, child) {
                          return Text(
                            model.Answer,
                            style: TextStyle(
                              fontSize: 60,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                          ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onpressed: () {
                            context.read<CalculatorProvider>().clear_input();
                          },
                        ),
                        MyButton(
                          title: '+/-',
                          onpressed: () {},
                        ),
                        MyButton(
                          title: '%',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('%');
                          },
                            ),
                        MyButton(
                          title: '/',
                        onpressed: () {
                            context.read<CalculatorProvider>().add_input('/');
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '7',
                         onpressed: () {
                            context.read<CalculatorProvider>().add_input('7');
                          },
                        ),
                        MyButton(
                          title: '8',
                        onpressed: () {
                             context.read<CalculatorProvider>().add_input('8');
                          },
                        ),
                        MyButton(
                          title: '9',
                         onpressed: () {
                            context.read<CalculatorProvider>().add_input('9');
                          },
                        ),
                        MyButton(
                          title: 'x',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('x');
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                           title: '4',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('4');
                          },
                        ),
                        MyButton(
                          title: '5',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('5');
                          },
                        ),
                        MyButton(
                          title: '6',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('6');
                          },
                        ),
                        MyButton(
                          title: '-',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('-');
                          },
                          color: Color(0xffffa00a),
                        ),
                             ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '1',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('1');
                          },
                        ),
                        MyButton(
                          title: '2',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('2');
                          },
                        ),
                        MyButton(
                          title: '3',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('3');
                          },
                          ),
                        MyButton(
                          title: '+',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('+');
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyButton(
                          title: '0',
                         onpressed: () {
                            context.read<CalculatorProvider>().add_input('0');
                          },
                        ),
                        MyButton(
                          title: '.',
                          onpressed: () {
                            context.read<CalculatorProvider>().add_input('.');
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          onpressed: () {
                            context.read<CalculatorProvider>().delete_input();
                          },
                        ),
                        MyButton(
                          title: '=',
                          onpressed: () {
                            context.read<CalculatorProvider>().calculate_result();
                          },
                          color: Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    ));
  }
}
