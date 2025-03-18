import 'package:calculator_app/View_Model/Cal_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CalProvider>(context, listen: false).splash_load(context);
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
            child: Image.asset('assets/icon/icon.png', height: 150.h, width: 150.w, fit: BoxFit.fill,),
          ),

          Center(
            child: Text('Calculator App', style: 
            GoogleFonts.agbalumo(color: Colors.white,  fontSize: 30.sp)
            ,),
          ),


          SpinKitDualRing(
            color: Colors.white,
            size: 50.sp,
          )
        ],
      ),

    );
  }
}
