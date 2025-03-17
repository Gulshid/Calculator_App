import 'package:calculator_app/View_Model/Calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CalculatorProvider>(
        context,
        listen: false,
      ).splash_load(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          ClipRRect(
            child: Image.asset('assets/Calculator_512.webp', width: 100.w, height: 100.h, fit: BoxFit.fill,),
          ),
        

          Center(
            child: Text('Calculator App', style:  GoogleFonts.agbalumo( fontSize: 30.sp, color: Colors.white),),
          ),


          SpinKitDualRing(color: Colors.white, size: 50.sp ,)


        ],
      ),
    );
  }
}
