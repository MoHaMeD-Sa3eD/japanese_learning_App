import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Repeated_Components/FamilyMembers_Container.dart';

class familyMembers extends StatelessWidget {
  familyMembers({super.key});

  final List<FamilymembersContainer> membersOfFamily = [
    FamilymembersContainer(
        enName: 'father',
        image: Image.asset('assets/images/family_members/family_father.png'),
        jpName: 'Chichioya',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/father.wav'));
        }),
    FamilymembersContainer(
        enName: 'daughter',
        image: Image.asset('assets/images/family_members/family_daughter.png'),
        jpName: 'Musume',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/daughter.wav'));
        }),
    FamilymembersContainer(
        enName: 'grand father',
        image: Image.asset('assets/images/family_members/family_grandfather.png'),
        jpName: 'Ojīchan',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/grand father.wav'));
        }),
    FamilymembersContainer(
        enName: 'mother',
        image: Image.asset('assets/images/family_members/family_mother.png'),
        jpName: 'Hahaoya',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/mother.wav'));
        }),
    FamilymembersContainer(
        enName: 'grand mother',
        image: Image.asset('assets/images/family_members/family_grandmother.png'),
        jpName: 'Sobo',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/grand mother.wav'));
        }),
    FamilymembersContainer(
        enName: 'older brother',
        image: Image.asset('assets/images/family_members/family_older_brother.png'),
        jpName: 'Nīsan',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/older bother.wav'));
        }),
    FamilymembersContainer(
        enName: 'older sister',
        image: Image.asset('assets/images/family_members/family_older_sister.png'),
        jpName: 'Ane',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/older sister.wav'));
        }),
    FamilymembersContainer(
        enName: 'son',
        image: Image.asset('assets/images/family_members/family_son.png'),
        jpName: 'Musuko',
        onPressedSound: () {
          final player = AudioPlayer();
          player.play(AssetSource('sounds/family_members/son.wav'));
        }),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332b),
      ),
      body: ListView.builder(
          itemCount: membersOfFamily.length,
          itemBuilder: (context, num) {
            return membersOfFamily[num];
          }),
    );
  }
}
