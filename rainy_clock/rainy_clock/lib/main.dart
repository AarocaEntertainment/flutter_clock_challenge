import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'dart:io';

import 'digital_clock.dart';
import 'helper/customizer.dart';
import 'helper/model.dart';

//import 'rainy_clock.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rainy Clock',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: RainyClock(title: 'Rainy Clock'),
//     );
//   }
// }

void main() {
  // A temporary measure until Platform supports web and TargetPlatform supports
  // macOS.
  if (!kIsWeb && Platform.isMacOS) {
    // TODO(gspencergoog): Update this when TargetPlatform includes macOS.
    // https://github.com/flutter/flutter/issues/31366
    // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override.
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }

  // This creates a clock that enables you to customize it.
  //
  // The [ClockCustomizer] takes in a [ClockBuilder] that consists of:
  //  - A clock widget (in this case, [DigitalClock])
  //  - A model (provided to you by [ClockModel])
  // For more information, see the flutter_clock_helper package.
  //
  // Your job is to edit [DigitalClock], or replace it with your
  // own clock widget. (Look in digital_clock.dart for more details!)
  runApp(ClockCustomizer((ClockModel model) => DigitalClock(model)));
}
