import 'package:flutter/material.dart';

class StartUpTopRated extends StatelessWidget {
  const StartUpTopRated(
      {super.key, required this.imageUrl, required this.rating});

  final String imageUrl;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 108,
          width: 127,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 19,
            width: 39,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(6)),
            ),
            child: Center(
              child: Text(
                '$rating',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
