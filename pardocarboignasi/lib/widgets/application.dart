import 'package:flutter/material.dart';

import 'bluehalf.dart';
import 'whitehalf.dart';

class Application extends StatelessWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            BlueHalf(),
            WhiteHalf(),
          ],
        ),
      ),
    );
  }
}
