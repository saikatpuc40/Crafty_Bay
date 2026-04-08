import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class CompletedProfileScreen extends StatefulWidget {
  const CompletedProfileScreen({super.key});

  @override
  State<CompletedProfileScreen> createState() => _CompletedProfileScreenState();
}

class _CompletedProfileScreenState extends State<CompletedProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24,),
              AppLogoWidget(),
              const SizedBox(height: 16,),
              Text("Completed Profile",style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8,),
              Text("Get Started With Us With Your Details",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey
              )),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name'
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Last Name'
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Mobile'
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'City'
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: 'Shipping Address'
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){
                    _onTapCompleteButton();
                  }, child: Text("Complete")
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onTapCompleteButton(){
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerificationScreen()));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
