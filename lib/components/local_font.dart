import 'package:flutter/material.dart';

class LocalFont extends StatelessWidget {
  const LocalFont({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text(
      '4. Hello, World!',
      style: TextStyle(
          fontFamily: 'Roboto', fontSize: 20.0, fontWeight: FontWeight.w600),
    );
  }
}
