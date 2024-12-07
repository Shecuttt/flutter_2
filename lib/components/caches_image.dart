import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachesImage extends StatelessWidget {
  const CachesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('3. Cache image'),
        CachedNetworkImage(
          imageUrl:
              'https://plus.unsplash.com/premium_photo-1675714692779-0c451bbd796a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxN3x8fGVufDB8fHx8fA%3D%3D',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        )
      ],
    );
  }
}
