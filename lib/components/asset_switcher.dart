import 'package:flutter/material.dart';

class AssetSwitcher extends StatefulWidget {
  const AssetSwitcher({super.key});

  @override
  State<AssetSwitcher> createState() => _AssetSwitcherState();
}

class _AssetSwitcherState extends State<AssetSwitcher> {
  bool _useSetOne = true; // Controls which set of assets to use

  // Toggle between asset sets
  void _toggleAssetSet(bool value) {
    setState(() {
      _useSetOne = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Toggle Switch
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Set One'),
            Switch(
              value: _useSetOne,
              onChanged: _toggleAssetSet,
            ),
            const Text('Set Two'),
          ],
        ),
        const SizedBox(height: 20),
        // Display assets based on the toggle
        _useSetOne
            ? Column(
                children: [
                  Image.asset('assets/image.png', width: 150, height: 150),
                  const SizedBox(height: 10),
                  const Text(
                    'Gambar 1',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                  ),
                ],
              )
            : Column(
                children: [
                  Image.asset('assets/image2.png', width: 150, height: 150),
                  const SizedBox(height: 10),
                  const Text(
                    'Gambar 2',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                  ),
                ],
              ),
      ],
    );
  }
}
