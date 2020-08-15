import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'data.dart';
import 'constants.dart';
import 'detail_page.dart';
import 'router.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('images/banner.png'),
              ),
              Container(
                height: 500.0,
                padding: EdgeInsets.only(left: 32.0),
                child: Swiper(
                  itemCount: techList.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              techInfo: techList[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 130.0,
                              ),
                              Card(
                                elevation: 8.0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 95.0,
                                      ),
                                      Text(
                                        techList[index].name,
                                        style: TextStyle(
                                          fontFamily: 'GoogleSans',
                                          fontSize: 30.0,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        techList[index].text,
                                        style: TextStyle(
                                          fontFamily: 'NotoSans',
                                          fontSize: 20.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 32.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '詳細資訊',
                                            style: TextStyle(
                                              fontFamily: 'NotoSans',
                                              fontSize: 18.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 40.0,
                            right: 16.0,
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                fontFamily: 'GoogleSans',
                                fontSize: 247,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Hero(
                            tag: techList[index].position,
                            child: Image.asset(techList[index].iconImage),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.cyan,
                    size: 34.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.cyan,
                      fontFamily: 'GoogleSans',
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  createCourseRoute(),
                );
              },
              child: Icon(
                Icons.calendar_today,
                color: Colors.cyan,
                size: 28.0,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  createProfileRoute(),
                );
              },
              child: Icon(
                Icons.account_circle,
                color: Colors.cyan,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
