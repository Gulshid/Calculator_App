import 'package:calculator_app/View_Model/Cal_Provider.dart';
import 'package:calculator_app/view_/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDisplay(context),
        Expanded(flex: 2, child: _buildButtons(context)),
      ],
    );
  }

  Widget _buildDisplay(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //1st Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.topRight,
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
                color: Colors.grey,
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

          //2nd Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
                color: Colors.grey,
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
    );
  }

  Widget _buildButtons(BuildContext context) {
    final calProvider = context.read<CalProvider>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Row 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(
              title: 'AC',
              color: const Color.fromARGB(255, 111, 174, 210),
              onPress: () => calProvider.clear_Input(),
            ),
            MyButton(
              title: '+/-',
              color: const Color.fromARGB(255, 111, 174, 210),
              onPress:
                  ({int? value}) =>
                      calProvider.add_Input(value == 0 ? '(' : ')'),
            ),
            MyButton(
              title: '%',
              color: const Color.fromARGB(255, 111, 174, 210),
              onPress: () => calProvider.add_Input('%'),
            ),
            MyButton(
              title: '/',
              onPress: () => calProvider.add_Input('/'),
              color: Colors.orange,
            ),
          ],
        ),

        //Row 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(title: '7', onPress: () => calProvider.add_Input('7')),
            MyButton(title: '8', onPress: () => calProvider.add_Input('8')),
            MyButton(title: '9', onPress: () => calProvider.add_Input('9')),
            MyButton(
              title: 'x',
              onPress: () => calProvider.add_Input('x'),
              color: Colors.orange,
            ),
          ],
        ),

        //Row 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(title: '4', onPress: () => calProvider.add_Input('4')),
            MyButton(title: '5', onPress: () => calProvider.add_Input('5')),
            MyButton(title: '6', onPress: () => calProvider.add_Input('6')),
            MyButton(
              title: '-',
              onPress: () => calProvider.add_Input('-'),
              color: Colors.orange,
            ),
          ],
        ),

        //Row 4
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(title: '1', onPress: () => calProvider.add_Input('1')),
            MyButton(title: '2', onPress: () => calProvider.add_Input('2')),
            MyButton(title: '3', onPress: () => calProvider.add_Input('3')),
            MyButton(
              title: '+',
              onPress: () => calProvider.add_Input('+'),
              color: Colors.orange,
            ),
          ],
        ),

        //Row 5
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyButton(title: '0', onPress: () => calProvider.add_Input('0')),
            MyButton(title: '.', onPress: () => calProvider.add_Input('.')),
            MyButton(title: 'DEL', onPress: () => calProvider.delete_Input()),
            MyButton(
              title: '=',
              onPress: () => calProvider.calculate_Input(),
              color: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }
}
