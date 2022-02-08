import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/screens/profile/components/add_card.dart';
import 'package:netflix_ui/screens/profile/components/profile_card.dart';
import '../../constants.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "NetFlix",
          style: kTitleTextStyle,
        ),
        actions: [
          Icon(FontAwesomeIcons.pen, size: 18),
          const SizedBox(width: 12)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "넷플릭스를 시청할 프로필을 선택하세요.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Wrap(
                spacing: 25,
                children: [
                  ProfileCard(),
                  AddCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
