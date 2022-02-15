import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/models/episode.dart';

class EpisodeCard extends StatelessWidget {
  final Episode episode;

  const EpisodeCard({
    Key? key,
    required this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage(episode.previewImageUrl),
                    width: 130,
                    height: 70,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: episode.episode,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: "."),
                            TextSpan(text: episode.title)
                          ]),
                    ),
                    Text(
                      episode.playTime,
                      style: TextStyle(
                        color: Color(0xFF6c6c6c),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Text(episode.description),
          ],
        ),
        Positioned(
          right: 0,
          top: 20,
          child: Icon(FontAwesomeIcons.download),
        )
      ],
    );
  }
}
