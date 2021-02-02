import 'package:flutter/material.dart';

import 'CourseDetails.dart';
import 'Star.dart';
import 'navigation.dart';

void main() {
  runApp(
  MaterialApp(
    home: Star(),
//    initialRoute: '/',
//    routes: {
//      '/' : (ctx)=>Navigation(),
//      CourseDetail.routeName : (ctx) => CourseDetail(),
//
//    },
  )
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isFavorite=false;
  Widget _buildIcon(IconData icon, String title){
      return Container(

          child: Column(
            children: [
              Icon(icon,
                color: Colors.blue,
              ),
              SizedBox(height: 5,),
              Text("${title}", style: TextStyle(color: Colors.blue),)
            ],
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Flutter layout")
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(

            width: double.infinity,
//            height: MediaQuery.of(context).size.height* 0.5,


            child: Image.asset('Assets/Image/yared.jpg'),
          ),
        Container(
         margin: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(

                children: [
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Oeschen Lake Campground",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                        SizedBox(height: 6,),
                        Text("Kandaersteg, switherland",
                        style: TextStyle(
                          fontWeight: FontWeight.w100
                        ),
                        )
                      ],
                    ),
                  ),

                     IconButton(icon: this._isFavorite ? Icon(Icons.star, color: Colors.red,) :  Icon(Icons.star_border, color: Colors.red,) , onPressed: (){
                       print("This icon clicked");
                     }),
                      Text("41")

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  this._buildIcon(Icons.call, "CALL"),
                  this._buildIcon(Icons.near_me, "ROUTE"),
                  this._buildIcon(Icons.share, "SHARE"),





                ],
              ),
              SizedBox(
                height:40
              ),
              Text("Proident enim et duis qui excepteur commodo amet cillum velit velit ullamco. Adipisicing esse officia ullamco consectetur ex. Reprehenderit proident enim deserunt laboris. Dolor consequat occaecat tempor qui deserunt sint sint nulla commodo laboris deserunt sunt excepteur laboris")
            ],
          ),
        ),

        ],

      ),
    );
  }
}
