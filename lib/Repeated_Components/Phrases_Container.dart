import 'package:flutter/material.dart';

class phrasesContainer extends StatelessWidget {
  final String enPhrase;
  final String jpPhrase;

  final Function() onPressedSound;

  const phrasesContainer({super.key, required this.enPhrase, required this.jpPhrase, required this.onPressedSound});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff45a3c4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpPhrase,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.5,
                  ),
                ),
                Text(
                  enPhrase,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            color: Colors.white,
            onPressed: onPressedSound,
            icon: const Icon(Icons.play_arrow),
            iconSize: 33,
          ),
        ],
      ),
    );
  }
}
