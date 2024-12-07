import 'package:flutter/material.dart';
import 'package:flutter_2/components/asset_switcher.dart';
import 'package:flutter_2/components/caches_image.dart';
import 'package:flutter_2/components/gfonts.dart';
import 'package:flutter_2/components/image_grid.dart';
import 'package:flutter_2/components/local_font.dart';
import 'package:flutter_2/components/local_image.dart';
import 'package:flutter_2/components/online_json.dart';
import 'package:flutter_2/components/person_json.dart';
import 'package:flutter_2/components/quotes.dart';
import 'package:flutter_2/components/url_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter 2',
        home: Scaffold(
            appBar: AppBar(title: const Text('Rawr')),
            body: const SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocalImage(),
                    UrlImage(),
                    CachesImage(),
                    SizedBox(
                      height: 50,
                    ),
                    LocalFont(),
                    SizedBox(
                      height: 50,
                    ),
                    Gfonts(),
                    SizedBox(
                      height: 50,
                    ),
                    PersonJson(),
                    SizedBox(
                      height: 50,
                    ),
                    OnlineJson(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 200, // Take full width of the screen
                      height: 200, // Take full height of the screen
                      child: Quotes(),
                    ),
                    AssetSwitcher(),
                    SizedBox(
                      height: 250,
                      child: ImageGrid(),
                    ),
                  ],
                ),
              ),
            )));
  }
}
