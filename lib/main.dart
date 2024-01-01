import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RealTimeTuningDisplay(),
      ),
    );
  }
}

class RealTimeTuningDisplay extends StatefulWidget {
  @override
  _RealTimeTuningDisplayState createState() => _RealTimeTuningDisplayState();
}

class _RealTimeTuningDisplayState extends State<RealTimeTuningDisplay> {
  static const _backgroundColor = Color.fromARGB(255, 255, 255, 255);

  static const _colors = [
    // Color.fromARGB(255, 64, 254, 181),
    Color.fromARGB(255, 254, 64, 80),
    Color.fromARGB(255, 96, 254, 64),
    // Color(0xFFFEE440),
    Color(0xFF00BBF9),
  ];

  static const _durations = [
    // 8000,
    // 7000,
    6000,
    5000,
    4000,
  ];

  static const _heightPercentages = [
    // 0.62,
    // 0.63,
    0.64,
    0.65,
    0.66,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WaveWidget(
        waveFrequency: 2,
        wavePhase: 200,
        config: CustomConfig(
          blur: MaskFilter.blur(BlurStyle.outer, 5),
          colors: _colors,
          durations: _durations,
          heightPercentages: _heightPercentages,
        ),
        backgroundColor: _backgroundColor,
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}
