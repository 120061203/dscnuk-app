import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'data.dart';
import 'constants.dart';

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
                child: Swiper(
                  itemCount: techList.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(),
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 85.0,
                                    ),
                                    Text(
                                      techList[index].name,
                                      style: TextStyle(
                                        fontFamily: 'GoogleSans',
                                        fontSize: 35.0,
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
                        Image.asset(techList[index].iconImage),
                      ],
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
          color: Colors.black12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
