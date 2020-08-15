import 'package:dscnuk/router.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        color: Colors.red,
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
              onTap: () {
                Navigator.of(context).push(
                  createHomeRoute(),
                );
              },
              child: Icon(
                Icons.home,
                color: Colors.cyan,
                size: 34.0,
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
                )),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.cyan,
                    size: 32.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.cyan,
                      fontFamily: 'GoogleSans',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
