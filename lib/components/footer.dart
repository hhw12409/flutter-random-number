import 'package:flutter/material.dart';
import 'package:flutter_random_number/constants/color.dart';

class Footer extends StatelessWidget {
  final VoidCallback onPressed;

  const Footer({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: RED_COLOR,
        ),
        onPressed: onPressed,
        child: const Text(
          '생성하기',
        ),
      ),
    );
  }
}
