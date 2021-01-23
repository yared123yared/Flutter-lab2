import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
    home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {

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


            child: Image.network("https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg"),
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

                      Icon(Icons.star, color: Colors.red,),
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
