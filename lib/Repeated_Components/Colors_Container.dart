import 'package:flutter/material.dart';

class colorsContainer extends StatelessWidget {
  final String jpColorName;
  final String enColorName;
  final Image imageColor;

  final Function() onPressedSound;

  const colorsContainer(
      {super.key,
        required this.enColorName,
        required this.imageColor,
        required this.jpColorName,
        required this.onPressedSound});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff7b3f9c),
      child: Row(
        children: [
          Container(
            color: const Color(0xfffdf2da),
            child: imageColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpColorName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  enColorName,
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
