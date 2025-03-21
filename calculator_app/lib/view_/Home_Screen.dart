import 'package:calculator_app/View_Model/Cal_Provider.dart';
import 'package:calculator_app/view_/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //1st Container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.topRight,
                      height: 130.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
                        color: Colors.grey
                      ),
                      child: Consumer<CalProvider>(
                        builder: (context, model, child) {
                          return Text(
                            model.userInput,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
            
                  //2st Container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      height: 130.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
                        color: Colors.grey
                      ),
                      child: Consumer<CalProvider>(
                        builder: (context, model, child) {
                          return Text(
                            model.answer,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        title: 'AC',
                        color: const Color.fromARGB(255, 111, 174, 210),
                        onPress: () {
                          context.read<CalProvider>().clear_Input();
                        },
                      ),
                  
                      MyButton(
                        title: '+/-',
                        color:  const Color.fromARGB(255, 111, 174, 210),
                        onPress: ({int ?value}) {
                          context.read<CalProvider>().add_Input(value==0?'(':')');
                        },
                      ),
                  
                      MyButton(
                        title: '%',
                        color: const Color.fromARGB(255, 111, 174, 210),
                        onPress: () {
                          context.read<CalProvider>().add_Input('%');
                        },
                      ),
                  
                      MyButton(
                        title: '/',
                        onPress: () {
                          context.read<CalProvider>().add_Input('/');
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),

                  //Row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        title: '7',
                        onPress: () {
                          context.read<CalProvider>().add_Input('7');
                        },
                      ),

                      MyButton(
                        title: '8',
                        onPress: () {
                          context.read<CalProvider>().add_Input('8');
                        },
                      ),

                      MyButton(
                        title: '9',
                        onPress: () {
                          context.read<CalProvider>().add_Input('9');
                        },
                      ),

                      MyButton(
                        title: 'x',
                        onPress: () {
                          context.read<CalProvider>().add_Input('x');
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),

                  //Row 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        title: '4',
                        onPress: () {
                          context.read<CalProvider>().add_Input('4');
                        },
                      ),

                      MyButton(
                        title: '5',
                        onPress: () {
                          context.read<CalProvider>().add_Input('5');
                        },
                      ),

                      MyButton(
                        title: '6',
                        onPress: () {
                          context.read<CalProvider>().add_Input('6');
                        },
                      ),

                      MyButton(
                        title: '-',
                        onPress: () {
                          context.read<CalProvider>().add_Input('-');
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),

                  //Row 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        title: '1',
                        onPress: () {
                          context.read<CalProvider>().add_Input('1');
                        },
                      ),

                      MyButton(
                        title: '2',
                        onPress: () {
                          context.read<CalProvider>().add_Input('2');
                        },
                      ),

                      MyButton(
                        title: '3',
                        onPress: () {
                          context.read<CalProvider>().add_Input('3');
                        },
                      ),

                      MyButton(
                        title: '+',
                        onPress: () {
                          context.read<CalProvider>().add_Input('+');
                        },
                        color: Colors.orange,
                      ),
                    ],
                  ),

                  //Row 5
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        title: '0',
                        onPress: () {
                          context.read<CalProvider>().add_Input('0');
                        },
                      ),

                      MyButton(
                        title: '.',
                        onPress: () {
                          context.read<CalProvider>().add_Input('.');
                        },
                      ),

                      MyButton(
                        title: 'DEL',
                        onPress: () {
                          context.read<CalProvider>().delete_Input();
                        },
                      ),

                      MyButton(
                        title: '=',
                        onPress: () {
                          context.read<CalProvider>().calculate_Input();
                        },
                        color: Colors.orange,
                      ),
                    ],
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
