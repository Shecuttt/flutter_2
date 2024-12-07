import 'package:flutter/material.dart';

class UrlImage extends StatelessWidget {
  const UrlImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('2. Image URL'),
        SizedBox(
          width: 400,
          height: 250,
          child: Image.network(
            'https://images.unsplash.com/photo-1731955196267-e863d6f39794?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D',
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Text(
                  'Failed to load image',
                  style: TextStyle(fontSize: 18.0, color: Colors.red),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
