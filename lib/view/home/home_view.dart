import 'package:flutter/material.dart';
import 'package:to_do/view/all/all_task_view.dart';
import 'package:to_do/view/complete/complete_task_view.dart';
import 'package:to_do/view/incomplete/incomplete_task_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    AllTaskView(),
    CompleteTaskView(),
    IncompleteTaskView(),
  ];
  static const List<BottomNavigationBarItem> _navigationBarItems = [
    BottomNavigationBarItem(
      icon: const Icon(Icons.all_inbox_rounded),
      label: 'All',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.check),
      label: 'Completed',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.radio_button_unchecked_outlined),
      label: 'Incomplete',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);
}
