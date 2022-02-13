import 'package:flutter/material.dart';

class RankPoster extends StatelessWidget {
  final String rank;
  final String posterUrl;

  const RankPoster({
    Key? key,
    required this.rank,
    required this.posterUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 30.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage(posterUrl),
              fit: BoxFit.cover,
              width: 120,
              height: 200,
            ),
          ),
        ),
        Positioned(
          left: -5.0,
          bottom: -30,
          child: Stack(
            children: [
              Text(
                rank,
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.white,
                ),
              ),
              Text(
                rank,
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // 3
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.0),
              ],
              stops: [0.0, rank != "1" ? 0.2 : 0.0],
            ),
          ),
        )
      ],
    );
  }
}
