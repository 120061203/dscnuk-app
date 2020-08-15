import 'package:flutter/material.dart';
import 'home_page.dart';
import 'course_page.dart';
import 'profile_page.dart';

Route createHomeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route createCourseRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CoursePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route createProfileRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ProfilePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
