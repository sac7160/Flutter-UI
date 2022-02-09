import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;

    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          leading: Center(
            child: Text(
              "N",
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 26, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Icon(FontAwesomeIcons.chromecast),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.search),
            SizedBox(width: 25),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: AssetImage("assets/images/dog.jpg"),
                ),
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        SliverAppBar(
          titleTextStyle: TextStyle(fontSize: 18),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          pinned: true,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("TV 프로그램"),
              Text("영화"),
              Text("내가 찜한 콘텐츠"),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(height: 100),
        )
      ],
    ));
  }
}
