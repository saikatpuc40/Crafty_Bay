import 'package:crafty_bay/presentation/ui/screens/completed_profile_screen.dart';
import 'package:crafty_bay/presentation/ui/utilities/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  final PinInputController _pinInputController = PinInputController();

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
              Text("Enter OTP Code",style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8,),
              Text("A 4 Digit OTP Code has been sent",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey
              )),
              const SizedBox(height: 16,),
              MaterialPinField(
                length: 6,
                theme: MaterialPinTheme(
                  shape: MaterialPinShape.outlined,
                  borderRadius: BorderRadius.circular(8),
                  cellSize: const Size(40, 50),
                  focusedBorderColor: AppColors.themeColor,
                  filledBorderColor: Colors.green,
                  completeFillColor: Colors.transparent,
                ),
                pinController: _pinInputController,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){
                    _onTapNextButton();
                  }, child: Text("Next")
              ),
              const SizedBox(height: 16,),
              RichText(text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey,
                ),
                text: "This code will expire in ",
                children: [
                  TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.themeColor
                    ),
                    text: '120s'
                  )
                ]
               ),),
              const SizedBox(height: 16,),
              TextButton(onPressed: (){}, child: Text("Resend Code",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                  )
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

  void _onTapNextButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CompletedProfileScreen()));
  }

  @override
  void dispose() {
    _pinInputController.dispose();
    super.dispose();
  }
}
