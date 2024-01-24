import 'package:flutter/material.dart';

class NumbersContainer extends StatelessWidget {
  final String jpNumber;
  final String enNumber;
  final Image image;

  final Function() onPressedSound;

  const NumbersContainer(
      {super.key,
      required this.enNumber,
      required this.image,
      required this.jpNumber,
      required this.onPressedSound});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xfff79437),
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
                  jpNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  enNumber,
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
