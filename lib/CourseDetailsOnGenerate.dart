import 'package:flutter/material.dart';

import 'course.dart';

class CourseDetail extends StatelessWidget {
  static final   routeName='/course';
  String courseName;
  String courseDescription;
  int courseECTs;

  CourseDetail({this.courseName, this.courseDescription, this.courseECTs});

  @override
  Widget build(BuildContext context) {

    Course course=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.courseName !=null ? this.courseName :  course.courseName}"),
      ),



      body: Center(
        child: Column(
          children: [
            Text("${ this.courseName !=null ? this.courseDescription : course.courseDescription}"),
            Text("${ this.courseECTs != null ? this.courseECTs : course.CourseECTs}"),

          ],
        ),
      ),
    );
  }
}
