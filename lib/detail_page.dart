import 'dart:ui';

import 'package:cinema_ticket_app/constants.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String movieName;
  final String photo;
  final String releaseYear;
  final String category;
  final String playtime;
  final int rating;
  final String description;

  const DetailPage({
    Key? key,
    required this.movieName,
    required this.photo,
    required this.releaseYear,
    required this.category,
    required this.playtime,
    required this.rating,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: kColor1,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.transparent,
                      ],
                    ).createShader(Rect.fromLTRB(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.adaptive.arrow_back_rounded,
                            color: Colors.white70,
                          ),
                          padding: const EdgeInsets.only(
                              top: 8, right: 8, bottom: 8),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          'Movie Detail',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Opacity(
                          opacity: 0,
                          child: IconButton(
                            icon: Icon(Icons.adaptive.arrow_back_rounded),
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 8,
                              bottom: 8,
                            ),
                            onPressed: null,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Hero(
                      tag: photo,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          photo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Center(
                      child: Text(
                        movieName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          releaseYear,
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          '•',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          category,
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          '•',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          playtime,
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        rating > 0
                            ? Icon(Icons.star_rounded, color: Colors.amber)
                            : Icon(Icons.star_rounded, color: Colors.grey),
                        rating > 1
                            ? Icon(Icons.star_rounded, color: Colors.amber)
                            : Icon(Icons.star_rounded, color: Colors.grey),
                        rating > 2
                            ? Icon(Icons.star_rounded, color: Colors.amber)
                            : Icon(Icons.star_rounded, color: Colors.grey),
                        rating > 3
                            ? Icon(Icons.star_rounded, color: Colors.amber)
                            : Icon(Icons.star_rounded, color: Colors.grey),
                        rating > 4
                            ? Icon(Icons.star_rounded, color: Colors.amber)
                            : Icon(Icons.star_rounded, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 32),
                    Center(
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
