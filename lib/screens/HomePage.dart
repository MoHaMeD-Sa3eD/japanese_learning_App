import 'package:flutter/material.dart';
import 'package:tuko_japanese_language_learning_app/screens/ColorsPage.dart';
import 'package:tuko_japanese_language_learning_app/screens/numbersPage.dart';

import '../Repeated_Components/HomePageContainer.dart';
import 'PhrasesPage.dart';
import 'familyMembersPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff48332b),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xfff79437),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return  NumbersPage();
                    },
                  ));
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff518035),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return familyMembers();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff7c3f9d),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff46a4c6),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
