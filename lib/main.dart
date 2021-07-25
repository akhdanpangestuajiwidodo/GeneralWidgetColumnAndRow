import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "General Widget(Column and Row)",
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: FirstScreen(),
   );
  }

}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // action menu
          },
        ),

        title: Text("First Screen"),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              //action search
            },
          )
        ],
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {  },),
          IconButton(icon: Icon(Icons.thumb_up), onPressed: () {  },),
          IconButton(icon: Icon(Icons.thumb_down), onPressed: () {  },),

          Column(
            children: <Widget>[
              Text(
                'Sebuah Judul',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('Lorem ipsum dolor sit amet'),
            ],
          )
        ],
      ),
    );
  }
}