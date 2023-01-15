import 'package:flutter/material.dart';
import 'package:flutter_random_number/constants/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: maxNumber
                      .toInt()
                      .toString()
                      .split('')
                      .map(
                        (e) => Image.asset(
                          'asset/img/$e.png',
                          width: 40,
                          height: 70,
                        ),
                      )
                      .toList(),
                ),
              ),
              Slider(
                value: maxNumber,
                min: 10000,
                max: 1000000,
                onChanged: (double val) {
                  setState(() {
                    maxNumber = val;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: RED_COLOR,
                ),
                child: const Text(
                  '저장!',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
