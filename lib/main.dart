import 'package:crafty_bay/app.dart';
import 'package:crafty_bay/presentation/state_holder/controller_binder.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:device_preview/presets.dart';

Future<void> main() async {

  DevicePreview.enable();
  await DevicePreview.controller.applyPreset(
    DevicePresets.pixel9,
  );

  runApp(
    ControllerBinder(child: const CraftyBayApp(),
    )
  );
}