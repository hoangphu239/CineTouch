import 'package:demo_movie/constants.dart';
import 'package:demo_movie/ui/location_cine/find_cine.dart';
import 'package:flutter/material.dart';


class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("PhuLe"),
              accountEmail: const Text("hoangphu239@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/actor_2.png"),
                ),
              ),
              decoration: const BoxDecoration(
                color: kSecondaryColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/cine_blur.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text('Profile',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text('Find Cinema',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FindCineScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.chat,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text('Contact us',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text('Settings',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text('Sign out',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ],
        ),
      ),
    );
  }
}
