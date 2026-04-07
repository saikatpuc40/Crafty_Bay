import 'package:crafty_bay/presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<void> _moveToNextScreen()  async {
    await Future.delayed(const Duration(seconds: 3));
    if(mounted) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context) => const HomeScreen()), (
          route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(height: 16,),
              Text("version 1.0.0")
            ],

              ),
        ),
      ),);
  }
}


