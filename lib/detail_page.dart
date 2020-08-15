import 'package:flutter/material.dart';
import 'constants.dart';
import 'data.dart';

class DetailPage extends StatelessWidget {
  final TechInfo techInfo;

  const DetailPage({Key key, this.techInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 300.0,
                          ),
                          Text(
                            techInfo.name,
                            style: TextStyle(
                              fontFamily: 'GoogleSans',
                              fontSize: 56,
                              color: Colors.cyan,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            techInfo.text,
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 31,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 16.0),
                          Divider(color: Colors.black38),
                          SizedBox(height: 32.0),
                          Text(
                            techInfo.description ?? '',
                            maxLines: 25,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 20,
                              color: contentTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 32.0),
                          Divider(color: Colors.black38),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                techInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontSize: 247,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Positioned(
              right: -36.0,
              top: -25.0,
              child: Container(
                height: 350.0,
                width: 350.0,
                child: Hero(
                  tag: techInfo.position,
                  child: Image.asset(techInfo.iconImage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
