import 'package:crafty_bay/presentation/state_holder/main_bottom_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ControllerBinder extends StatelessWidget {

  final Widget child;

  const ControllerBinder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_)=> MainBottomNavProvider(),
        )
      ],
      child: child,
    );
  }
}
