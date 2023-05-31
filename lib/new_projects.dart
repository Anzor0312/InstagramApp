import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterr/add.dart';
import 'package:flutterr/favoritepage.dart';
import 'package:flutterr/homepage.dart';
import 'package:flutterr/profilpage.dart';
import 'package:flutterr/searchpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currerntIndex=0;
  List<Widget>_screens=[Homepage(),Searchpage(),Add(),Favorite(),Profile()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: _screens[_currerntIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _currerntIndex,
          iconSize: 35,
          type:BottomNavigationBarType.fixed ,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: ""),
          ],
          onTap: (v){
            setState(() {
              _currerntIndex=v;
            });
          },
        )
    );
  }
}
