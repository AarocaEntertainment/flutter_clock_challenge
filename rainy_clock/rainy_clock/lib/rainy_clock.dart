// import 'dart:async';

// import 'package:flutter/material.dart';

// class RainyClock extends StatefulWidget {
//   RainyClock({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _RainyClockState createState() => _RainyClockState();
// }

// class _RainyClockState extends State<RainyClock> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//       DateTime _dateTime = DateTime.now();
//   Timer _timer;

//   @override
//   void initState() {
//     super.initState();
//     widget.model.addListener(_updateModel);
//     _updateTime();
//     _updateModel();
//   }

//   @override
//   void didUpdateWidget(RainyClock oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.model != oldWidget.model) {
//       oldWidget.model.removeListener(_updateModel);
//       widget.model.addListener(_updateModel);
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     widget.model.removeListener(_updateModel);
//     widget.model.dispose();
//     super.dispose();
//   }

//   void _updateModel() {
//     setState(() {
//       // Cause the clock to rebuild when the model changes.
//     });
//   }

//   void _updateTime() {
//     setState(() {
//       _dateTime = DateTime.now();
 
//       //Update once per second, but make sure to do it at the beginning of each
//       //new second, so that the clock is accurate.
//       _timer = Timer(
//         Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
//         _updateTime,
//       );
//     });
//   }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.aspect_ratio),
//       ),
//     );
//   }
// }
