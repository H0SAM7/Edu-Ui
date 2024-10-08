import 'package:edu_ui/constants.dart';
import 'package:edu_ui/features/home/views/home_view.dart';
import 'package:edu_ui/features/quiz/views/quizs_view.dart';
import 'package:edu_ui/features/settings/views/settings_view.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  static String id = 'BottomNavigator';

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
  Quizes(),

    SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem(Icons.home_outlined, 'Home', 0),
          _buildBottomNavigationBarItem(Icons.quiz_sharp, 'Quizs', 1),
          _buildBottomNavigationBarItem(Icons.settings, 'Settings', 2),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mainColor,
        selectedIconTheme: const IconThemeData(size: 15,
        ),
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label, int index,
      {bool isCentral = false}) {
    return BottomNavigationBarItem(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: isCentral ? 40 : 24,color: mainColor,),
          if (_selectedIndex == index) ...[
            const SizedBox(width: 8),
            Text(label,style: TextStyle(color: newColoR2),),
          ],
        ],
      ),
      label: '',
    );
  }
}
