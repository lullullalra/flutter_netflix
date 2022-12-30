import 'package:flutter/material.dart';
import 'package:flutter_netflix/screen/home_screen.dart';
import 'package:flutter_netflix/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp>{
  late TabController controller;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'PJHFlix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              // Container(child: Center(child: Text('home'),),),
              Container(child: Center(child: Text('search'),),),
              Container(child: Center(child: Text('save'),),),
              Container(child: Center(child: Text('more'),),),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}