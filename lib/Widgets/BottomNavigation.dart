import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resetio/Screens/BreatheScreen.dart';
import 'package:resetio/Screens/HomeScreen.dart';
import 'package:resetio/Screens/MedidateScreen.dart';
import 'package:resetio/Screens/SoundScreens.dart';
import 'package:resetio/Screens/StoriesScreen.dart';

import '../Constants.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final tabs = [
    MeditateScreen(),
    StoriesScreen(),
    HomeScreen(),
    SoundScreen(),
    BreatheScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: KButtonColor,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white.withOpacity(0.23)))), //

          child: Container(
            height: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(FontAwesomeIcons.pagelines),
                    title: Text('Meditate'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.moon,
                    ),
                    title: Text('Stories'),
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.home,
                    ),
                    title: Text('Home'),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.music),
                      title: Text('Sounds'),
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.user),
                      title: Text('Breathe'),
                      backgroundColor: Colors.white),
                ],
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ));
  }
}
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
