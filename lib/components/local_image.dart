import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '1. Local Image',
        ),
        SizedBox(
          width: 400.0,
          height: 250.0,
          child: Image.asset('assets/image.png'),
        ),
      ],
    );
  }
}
