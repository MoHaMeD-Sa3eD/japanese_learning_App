import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_japanese_language_learning_app/Repeated_Components/Colors_Container.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<colorsContainer> colorsList = [
    colorsContainer(
      enColorName: 'black',
      imageColor: Image.asset('assets/images/colors/color_black.png'),
      jpColorName: 'Kuro',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/black.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'brown',
      imageColor: Image.asset('assets/images/colors/color_brown.png'),
      jpColorName: 'Chairo',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/brown.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'dusty yellow',
      imageColor: Image.asset('assets/images/colors/color_dusty_yellow.png'),
      jpColorName: 'Hokori ppoi Kiiro',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/dusty yellow.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'gray',
      imageColor: Image.asset('assets/images/colors/color_gray.png'),
      jpColorName: 'Gurē',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/gray.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'green',
      imageColor: Image.asset('assets/images/colors/color_green.png'),
      jpColorName: 'Midori',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/green.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'red',
      imageColor: Image.asset('assets/images/colors/color_red.png'),
      jpColorName: 'Aka',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/red.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'white',
      imageColor: Image.asset('assets/images/colors/color_white.png'),
      jpColorName: 'Shiro',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/white.wav'));
      },
    ),
    colorsContainer(
      enColorName: 'yellow',
      imageColor: Image.asset('assets/images/colors/yellow.png'),
      jpColorName: 'Kiiro',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/colors/yellow.wav'));
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332b),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, num) {
          return colorsList[num];
        },
      ),
    );
  }
}
