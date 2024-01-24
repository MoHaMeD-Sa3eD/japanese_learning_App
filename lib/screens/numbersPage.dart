import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Repeated_Components/Numbers_Container.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final List<NumbersContainer> numbers = [
    NumbersContainer(
      enNumber: 'one',
      jpNumber: 'ichi',
      image: Image.asset('assets/images/numbers/number_one.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'two',
      jpNumber: 'Ni',
      image: Image.asset('assets/images/numbers/number_two.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_two_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'three',
      jpNumber: 'San',
      image: Image.asset('assets/images/numbers/number_three.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_three_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'four',
      jpNumber: 'Shi',
      image: Image.asset('assets/images/numbers/number_four.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_four_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'five',
      jpNumber: 'Go',
      image: Image.asset('assets/images/numbers/number_five.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_five_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'six',
      jpNumber: 'Roku',
      image: Image.asset('assets/images/numbers/number_six.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_six_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'seven',
      jpNumber: 'shichi',
      image: Image.asset('assets/images/numbers/number_seven.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_seven_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'eight',
      jpNumber: 'hachi',
      image: Image.asset('assets/images/numbers/number_eight.png'),
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_eight_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'nine',
      image: Image.asset('assets/images/numbers/number_nine.png'),
      jpNumber: 'kyũ',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_nine_sound.mp3'));
      },
    ),
    NumbersContainer(
      enNumber: 'ten',
      image: Image.asset('assets/images/numbers/number_ten.png'),
      jpNumber: 'jũ',
      onPressedSound: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/numbers/number_ten_sound.mp3'));
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int num) {
          return numbers[num];
        },
      ),
    );
  }
}
