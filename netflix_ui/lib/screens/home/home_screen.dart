import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/screens/components/label_icon.dart';
import 'package:netflix_ui/screens/components/play_button.dart';
import 'package:netflix_ui/screens/components/small_sub_text.dart';
import 'package:netflix_ui/screens/detail/detail_screen.dart';

import 'components/poster.dart';
import 'components/rank_poster.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;

    List<String> posters = [
      "assets/images/big_buck_bunny_poster.jpg",
      "assets/images/les_miserables_poster.jpg",
      "assets/images/minari_poster.jpg",
      "assets/images/the_book_of_fish_poster.jpg",
    ];

    ScrollController _backController = new ScrollController();
    ScrollController _frontController = new ScrollController();

    return Stack(
      children: [
        SingleChildScrollView(
          controller: _backController,
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage(posters[0]),
                    height: appSize.height * 0.6 +
                        (SliverAppBar().toolbarHeight * 2),
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    height: appSize.height * 0.6 +
                        (SliverAppBar().toolbarHeight * 2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.0),
                          Colors.black,
                        ],
                        stops: [0.0, 0.5, 0.9],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: appSize.height,
              )
            ],
          ),
        ),
        SafeArea(
          child: NotificationListener(
            onNotification: (ScrollNotification scrollInfo) {
              if (_frontController.offset <= appSize.height) {
                _backController.jumpTo(_frontController.offset);
                return true;
              } else {
                return false;
              }
            },
            child: CustomScrollView(
              controller: _frontController,
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  leading: Center(
                    child: Text(
                      "N",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
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
                      Text("TV ????????????"),
                      Text("??????"),
                      Text("?????? ?????? ?????????"),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: _buildInfoBottomSheet,
                      );
                    },
                    child: Container(
                      height: (appSize.height * 0.6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "?????? ???????????? ????????? ?????? 1???",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              LabelIcon(
                                icon: FontAwesomeIcons.plus,
                                label: "?????? ?????? ?????????",
                              ),
                              PlayButton(width: 80),
                              LabelIcon(
                                icon: Icons.info_outline,
                                label: "??????",
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40, left: 10),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "?????? ????????? ",
                                children: [
                                  TextSpan(
                                    text: "TOP 10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "?????????"),
                                ],
                                style: TextStyle(fontSize: 18)),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                              child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                posters.length,
                                (index) => RankPoster(
                                      rank: (index + 1).toString(),
                                      posterUrl: posters[index],
                                    )),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40, left: 10),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "TV ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: "???????????? ?? ?????????"),
                            ], style: TextStyle(fontSize: 18)),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                              child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                posters.length,
                                (index) => Poster(
                                      posterUrl: posters[index],
                                    )),
                          ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoBottomSheet(BuildContext context) {
    return Wrap(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF2B2B2B),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image(
                            image: AssetImage(
                                "assets/images/big_buck_bunny_poster.jpg"),
                            width: 100,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "??? ??? ??????",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  smallSubText(text: "2008"),
                                  SizedBox(width: 10),
                                  smallSubText(text: "15+"),
                                  SizedBox(width: 10),
                                  smallSubText(text: "?????? 1???"),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text("????????? ???????????? ????????? ??? 2????????? ?????? "
                                  "?????? ???????????? ????????? ?????? "
                                  "????????? ????????? ????????? ?????? ?????? "
                                  "2????????? ????????? ?????? ????????? ???????????? ????????? ?????????.")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PlayButton(width: 160),
                        LabelIcon(
                          icon: FontAwesomeIcons.download,
                          label: "??????",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        LabelIcon(
                          icon: FontAwesomeIcons.playCircle,
                          label: "????????????",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.pushNamed(context, DetailScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info_outline),
                              SizedBox(width: 10),
                              Text("?????? ??? ????????????"),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 16,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF525252),
                  ),
                  child: Icon(FontAwesomeIcons.times),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
