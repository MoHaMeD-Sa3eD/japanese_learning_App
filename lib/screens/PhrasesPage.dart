import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Repeated_Components/Phrases_Container.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<phrasesContainer> phrases = [
    phrasesContainer(
      enPhrase: 'are you coming?',
      jpPhrase: 'Kimasu ka?',
      onPressedSound: (){
        final player = AudioPlayer();
        player.play(AssetSource('sounds/phrases/are_you_coming.wav'));
      },
    ),
    phrasesContainer(
      enPhrase: 'don\'t forget to subscribe',
      jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/dont_forget_to_subscribe.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'how are you feeling?',
      jpPhrase: 'Go kibun wa ikagadesu ka?',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/how_are_you_feeling.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'i love anime',
      jpPhrase: 'Watashi wa anime ga daisukidesu',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/i_love_anime.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'i love programming',
      jpPhrase: 'Watashi wa puroguramingu ga daisukidesu',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/i_love_programming.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'programming is easy',
      jpPhrase: 'Puroguramingu wa kantandesu',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/programming_is_easy.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'what\'s your name?',
      jpPhrase: 'Anata no namae wa nanidesu ka?',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/what_is_your_name.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'where are you going?',
      jpPhrase: 'Doko ni iku no?',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/where_are_you_going.wav'));},
    ),
    phrasesContainer(
      enPhrase: 'yes,i\'m coming',
      jpPhrase: 'Hai, ikimasu',
      onPressedSound: (){final player = AudioPlayer();
      player.play(AssetSource('sounds/phrases/yes_im_coming.wav'));},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332b),
      ),
      body: ListView.builder(
        itemCount:phrases.length,
        itemBuilder: (BuildContext context, num) {
          return phrases[num];
        },
      ),
    );
  }
}
