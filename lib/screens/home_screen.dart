import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/news_screen.dart';
import 'package:flutter_travel_ui/screens/travel_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  final List<Widget> _children = [TravelScreen(), NewsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                size: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/destination_china.jpg'),
                radius: 15.0,
              ),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
