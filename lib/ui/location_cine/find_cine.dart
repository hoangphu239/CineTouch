import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/location_cine/component/list_cine.dart';
import 'package:demo_movie/ui/location_cine/component/map_cine.dart';
import 'package:flutter/material.dart';

class FindCineScreen extends StatefulWidget {
  const FindCineScreen({Key? key}) : super(key: key);

  @override
  State<FindCineScreen> createState() => _FineCineScreenState();
}

class _FineCineScreenState extends State<FindCineScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const ListCineScreen(),
    const MapCineScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Danh sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Bản đồ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kBgSelectSeatColor,
        unselectedItemColor: kTextLightColor,
        unselectedIconTheme: const IconThemeData(
          color: kTextLightColor,
        ),
        selectedIconTheme: const IconThemeData(
          color: kBgSelectSeatColor,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
