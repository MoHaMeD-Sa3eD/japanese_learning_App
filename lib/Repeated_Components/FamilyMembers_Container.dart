import 'package:flutter/material.dart';

class FamilymembersContainer extends StatelessWidget {
  final String jpName;
  final String enName;
  final Image image;

  final Function() onPressedSound;

  const FamilymembersContainer(
      {super.key,
      required this.enName,
      required this.image,
      required this.jpName,
      required this.onPressedSound});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff569038),
      child: Row(
        children: [
          Container(
            color: const Color(0xfffdf2da),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  enName,
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
