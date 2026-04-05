import 'package:crafty_bay/presentation/ui/screens/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {

  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 82,),
              AppLogoWidget(),
              const SizedBox(height: 16,),
              Text("Welcome Back",style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8,),
              Text("Please Enter Your Email Address",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey
              )),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _emailTEController,
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){
                    _onTapNextButton();
                  }, child: Text("Next")
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onTapNextButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerificationScreen()));
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
