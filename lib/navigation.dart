import 'package:flutter/material.dart';

import 'CourseDetails.dart';
import 'course.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(onPressed: (){

              Navigator.pushNamed(context, CourseDetail.routeName,
                  arguments: Course(
                      courseName: "Advanced Mobile Programing",
                      courseDescription: "Flutter Mobile application development",
                      CourseECTs: 7));
            }, child: Text("Advanced Mobile Programming",
              style: TextStyle(color: Colors.white),),
              color: Colors.purple,),
            FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(
                    courseName: "HCI",
                    courseDescription: "Human Computer Interuction",
                    courseECTs: 7
                )));
             
            }, child: Text("Human Computer interuction",
              style: TextStyle(color: Colors.white),),
              color: Colors.purple,)
          ],
        ),
      ),
    );
  }
}
