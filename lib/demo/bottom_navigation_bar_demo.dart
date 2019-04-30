import 'package:flutter/material.dart';
import '../demo/tab_pages/home_page.dart';
import 'sliver_demo.dart';
import 'view_demo.dart';
import 'stepper_demo.dart';
import 'card_demo.dart';
import 'drawer_demo.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BottomNavigationBarDemoState();
    }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  
  final List<Widget> _tabControllers = [
      HomePage(),
      StepperDemo(),
      CardDemo(),
      SliverDemo()
    ];

  var _currentPage ;
  
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _tabControllers[index];
      print(_currentPage);
    });
  }
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        // appBar: AppBar(title: Text('flyingfish'),),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My'),
            ),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: _tabControllers,
        ),
        drawer: DrawerDemo()
      );
    }
}