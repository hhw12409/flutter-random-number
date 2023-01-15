import 'package:flutter/material.dart';
import 'package:flutter_random_number/constants/color.dart';
import 'package:flutter_random_number/screens/settings.dart';

class Header extends StatelessWidget {
  final VoidCallback onPressed;

  const Header({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '랜덤숫자 생성기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const SettingsScreen();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.settings,
            color: RED_COLOR,
          ),
        )
      ],
    );
  }
}
