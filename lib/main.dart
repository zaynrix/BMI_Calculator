import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/config/app_config.dart' as config;
import 'package:bmi_calculator/modules/introductions/splash_screen.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) {
          if (brightness == Brightness.light) {
            return ThemeData(
              fontFamily: 'Poppins',
              primaryColor: Color(0xFF2C2C2C),
              primaryIconTheme: IconThemeData(color: Colors.black),
              brightness: Brightness.light,
              primaryTextTheme:
                  // ignore: deprecated_member_use
                  TextTheme(subtitle: TextStyle(color: Colors.black)),
              scaffoldBackgroundColor: Colors.white,
              accentColor: config.Colors().mainDarkColor(1),
              hintColor: config.Colors().secondDarkColor(1),
              focusColor: config.Colors().accentDarkColor(1),
              textTheme: TextTheme(
                // headline: TextStyle(
                  
                //     fontSize: 20.0, color: config.Colors().secondColor(1)),
                // headline4: TextStyle(
                //     fontSize: 18.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().secondColor(1)),
                // headline3: TextStyle(
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().secondColor(1)),
                // headline2: TextStyle(
                //     fontSize: 22.0,
                //     fontWeight: FontWeight.w700,
                //     color: config.Colors().mainColor(1)),
                // headline1: TextStyle(
                //     fontSize: 22.0,
                //     fontWeight: FontWeight.w300,
                //     color: config.Colors().secondColor(1)),
                // subtitle1: TextStyle(
                //     fontSize: 15.0,
                //     fontWeight: FontWeight.w500,
                //     color: config.Colors().secondColor(1)),
                // headline6: TextStyle(
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().mainColor(1)),
                // bodyText1: TextStyle(
                //     fontSize: 12.0, color: config.Colors().secondColor(1)),
                // bodyText2: TextStyle(
                //     fontSize: 14.0, color: config.Colors().secondColor(1)),
                // caption: TextStyle(
                //     fontSize: 12.0, color: config.Colors().accentColor(1)),
              ),
            );
          } else {
            return ThemeData(
              fontFamily: 'Poppins',
              primaryColor: Color(0xFF2C2C2C),
              brightness: Brightness.dark,
              scaffoldBackgroundColor: Color(0xFF2C2C2C),
              accentColor: config.Colors().mainDarkColor(1),
              // textButtonTheme: ,
              hintColor: config.Colors().secondDarkColor(1),
              focusColor: config.Colors().accentDarkColor(1),
              textTheme: TextTheme(
                // headline5: TextStyle(
                //     fontSize: 20.0, color: config.Colors().secondDarkColor(1)),
                // headline: TextStyle(
                //     fontSize: 18.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().secondDarkColor(1)),
                // headline3: TextStyle(
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().secondDarkColor(1)),
                // headline2: TextStyle(
                //     fontSize: 22.0,
                //     fontWeight: FontWeight.w700,
                //     color: config.Colors().mainDarkColor(1)),
                // headline1: TextStyle(
                //     fontSize: 22.0,
                //     fontWeight: FontWeight.w300,
                //     color: config.Colors().secondDarkColor(1)),
                // subtitle1: TextStyle(
                //     fontSize: 15.0,
                //     fontWeight: FontWeight.w500,
                //     color: config.Colors().secondDarkColor(1)),
                // headline6: TextStyle(
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.w600,
                //     color: config.Colors().mainDarkColor(1)),
                // bodyText1: TextStyle(
                //     fontSize: 12.0, color: config.Colors().secondDarkColor(1)),
                // bodyText2: TextStyle(
                //     fontSize: 14.0, color: config.Colors().secondDarkColor(1)),
                // caption: TextStyle(
                //     fontSize: 12.0,
                //     color: config.Colors().secondDarkColor(0.6)),
              ),
            );
          }
        },
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'BMI Calculator',
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: SplashScreen(),
          );
        });
    // }
    // );
  }
}
