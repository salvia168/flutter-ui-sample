import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key, required this.title});

  final String title;

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _value = 'sunny';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<String>(
                value: 'sunny',
                groupValue: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                }),
            const Text('Sunny'),
            const SizedBox(width: 32),
            Radio<String>(
                value: 'cloudy',
                groupValue: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                }),
            const Text('Cloudy'),
            const SizedBox(width: 32),
            Radio<String>(
                value: 'rainy',
                groupValue: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                }),
            const Text('Rainy'),
          ],
        ),
      ),
    );
  }
}
