import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_random_number/constants/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> randomNunmbers = [
    123,
    456,
    789,
  ];
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: RED_COLOR,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: randomNunmbers
                      .asMap()
                      .entries
                      .map(
                        (x) => Padding(
                          padding: EdgeInsets.only(
                            bottom: x.key == 2 ? 0 : 16,
                          ),
                          child: Row(
                            children: x.value
                                .toString()
                                .split('')
                                .map(
                                  (e) => Image.asset(
                                    'asset/img/$e.png',
                                    height: 70,
                                    width: 50,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RED_COLOR,
                  ),
                  onPressed: () {
                    final rand = Random();
                    final Set<int> newNumbers = {};

                    while (newNumbers.length != 3) {
                      final number = rand.nextInt(1000);
                      newNumbers.add(number);
                    }

                    setState(() {
                      randomNunmbers = newNumbers.toList();
                    });
                  },
                  child: const Text(
                    '생성하기',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
