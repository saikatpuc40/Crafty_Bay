import 'package:crafty_bay/presentation/ui/screens/splash_screen.dart';
import 'package:crafty_bay/presentation/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineLarge:  TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600
          ),
          // bodyLarge: TextStyle(
          //   fontSize: 16,
          //   fontWeight: FontWeight.w400,
          //   color: Colors.grey,
          // )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder(Colors.red),
          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              padding: EdgeInsets.symmetric(vertical: 12),
              //minimumSize: Size(double.infinity, 0)
              fixedSize: Size.fromWidth(double.maxFinite),
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              )
          )
       ),
      )
    );
  }

  OutlineInputBorder _outlineInputBorder([Color? color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color:AppColors.themeColor,width: 1)
    );

  }
}
