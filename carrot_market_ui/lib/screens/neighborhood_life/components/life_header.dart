import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/screens/components/image_container.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageContainer(
                borderRadius: 6.0,
                imageUrl: 'https://placeimg.com/200/100/any',
                width: 45.0,
                height: 45.0),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                lifeTitle,
                style: textTheme().bodyText1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
