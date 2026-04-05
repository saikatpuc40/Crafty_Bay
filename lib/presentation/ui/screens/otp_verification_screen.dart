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
                  focusedBorderColor: Colors.blue,
                  filledBorderColor: Colors.blue,
                  borderColor: Colors.grey,
                ),
                pinController: _pinInputController,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){}, child: Text("Next")
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pinInputController.dispose();
    super.dispose();
  }
}
