import 'package:demo_movie/constants.dart';
import 'package:demo_movie/remote/server_api.dart';
import 'package:demo_movie/repo/repository.dart';
import 'package:demo_movie/ui/home/components/discover_movie.dart';
import 'package:demo_movie/ui/home/components/discover.dart';
import 'package:demo_movie/ui/home/components/drawer.dart';
import 'package:demo_movie/ui/home/components/trending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _widgetOptions = <Widget>[
    const DiscoverScreen(),
    const TrendingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: kSecondaryColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kSecondaryColor,
            ),
          )
        ],
      ),
      backgroundColor: Colors.black12,
      drawer: const DrawerMenu(),
      body: MultiProvider(
        providers: [
          Provider.value(
            value: ServerAPI(),
          ),
          ProxyProvider<ServerAPI, Repository>(
            update: (context, api, previous) => Repository(api),
          ),
        ],
        child: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, color: kSecondaryColor),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up,
              color: kSecondaryColor,
            ),
            label: 'Trending',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kSecondaryColor,
        unselectedItemColor: kSecondaryColor.withOpacity(0.4),
        onTap: _onItemTapped,
      ),
    );
  }
}
