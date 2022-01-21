import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/life_body.dart';
import 'components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('동네생활'),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
              onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: LifeBody(
              neighborhoodLife: neighborhoodLifeList[0],
            ),
          ),
        ],
      ),
    );
  }
}
