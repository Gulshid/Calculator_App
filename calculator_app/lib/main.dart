import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => Todoprovider())],

          child: Builder(
            builder: (BuildContext context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'To do App',
                theme: ThemeData(
                  applyElevationOverlayColor: true,
                  brightness: Brightness.light,
                  appBarTheme: AppBarTheme(color: Colors.deepPurple),
                  primarySwatch: Colors.blue,
                  textTheme: Typography.englishLike2018.apply(
                    fontSizeFactor: 1.sp,
                  ),
                ),
                initialRoute: Routesname.Splash,
                onGenerateRoute: Routes.generateRoute,
              );
            },
          ),
        );
      },
    );
  }
}