import 'package:flutter/material.dart';

import 'feed_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt,
            color: Colors.grey,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tv,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey.shade800,),
              label: "Feed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey.shade800),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_sharp, color: Colors.grey.shade800),
              label: "Upload"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.grey.shade800),
              label: "Likes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey.shade800),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
