import 'dart:ui';

import 'package:flutter/material.dart';

class DestinationDetails extends StatelessWidget {
  const DestinationDetails({
    super.key,
    required this.image,
    required this.placeName,
    required this.placeInfo,
    required this.index,
  });

  final int index;
  final String image;
  final String placeName;
  final String placeInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Hero(
          tag: 'image_$index',
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage(image), // Replace with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, bottom: 180),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      placeName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      placeInfo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
