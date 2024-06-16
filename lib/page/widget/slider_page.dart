import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key, required this.title});

  final String title;

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Slider(
          value: _value,
          max: 100,
          divisions: 10,
          label: _value.round().toString(),
          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
