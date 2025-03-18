import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onpressed;

  const MyButton({Key? key, required this.title, this.color, required this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 80.h,
        width: 80.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
      
        child: Center(
          child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20.sp),),
        ),
      ),
    );
  }
}
