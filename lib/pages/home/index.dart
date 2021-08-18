import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro.dart';
import 'service.dart';
import 'tools.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  var _bottomNavPages = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Image getIcon(path) {
    return Image.asset(path, width: 27.0, height: 27.0, fit: BoxFit.cover);
  }

  @override
  void initState() {
    super.initState();
    _bottomNavPages..add(HomeIntro())..add(HomeTools())..add(HomeService());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _bottomNavPages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(color: Color(0xFFF0F2F5), blurRadius: 0, offset: Offset(0.0, -1)),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFFFFFFF),
            selectedLabelStyle: TextStyle(color: Color(0xFF1E64F2), fontSize: 11),
            unselectedLabelStyle: TextStyle(color: Color(0xFF606266), fontSize: 11),
            fixedColor: Color(0xFF1E64F2),
            currentIndex: _selectedIndex,
            // selectedItemColor: Colors.teal,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                label: '介绍',
                icon: getIcon('lib/assets/icons/icon_intro_nor.png'),
                activeIcon: getIcon('lib/assets/icons/icon_intro_sel.png'),
              ),
              BottomNavigationBarItem(
                label: '工具',
                icon: getIcon('lib/assets/icons/icon_tool_nor.png'),
                activeIcon: getIcon('lib/assets/icons/icon_tool_sel.png'),
              ),
              BottomNavigationBarItem(
                label: '客服',
                icon: getIcon('lib/assets/icons/icon_service_nor.png'),
                activeIcon: getIcon('lib/assets/icons/icon_service_sel.png'),
              ),
            ],
          ),
        ));
  }
}
