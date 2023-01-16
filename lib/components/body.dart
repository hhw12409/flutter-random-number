import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<int> randomNunmbers;

  const Body({
    Key? key,
    required this.randomNunmbers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
