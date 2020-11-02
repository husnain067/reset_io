import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constants.dart';

class SoundScreen extends StatefulWidget {
  @override
  _SoundScreenState createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 5, child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:Container(
            child: Column(
              children: [
                SizedBox(height: 5,),
                Icon(FontAwesomeIcons.music,color: KButtonColor,),
                SizedBox(height: 5,),
                Text(
                  "Sounds",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.list,color: KButtonColor,), onPressed: (){
              Navigator.pushNamed(context, '/SettingsScreen');

            })
          ],
          centerTitle: true,
          bottom: TabBar(
            indicator: BoxDecoration(
              color: KButtonColor,
            ),
            unselectedLabelColor: Colors.black,
            // indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,

            tabs: [
              Align(
                  alignment: Alignment.center,
                  child: Tab(text: "Home",)),
              Tab(text: "All",),
              Tab(text: "Favourites",),
              Tab(text: "Spiritual",),
              Tab(text: "Stress",),
            ],),
        ),
        body: TabBarView(
            children: [
            SoundScreenView(),
              Container(
                color: Colors.black12,
                child: Column(
                  children: [
                    Divider(color: Colors.black,)
                  ],
                ),
              ),
              Container(
                color: Colors.black12,              ),
              Container(
                color: Colors.black12,              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
              ),

            ]),
      )),



    );
  }
}


class SoundScreenView extends StatefulWidget {
  @override
  _SoundScreenViewState createState() => _SoundScreenViewState();
}

class _SoundScreenViewState extends State<SoundScreenView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.black,),
        SizedBox(height: 30,),
        Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    children: [
                      SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 50),
                      SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 50),
                      SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 50),
                      SoundContainer(evenOdd: 0),
                     /* SoundContainer(evenOdd: 0),
                      SoundContainer(evenOdd: 50),
                      SoundContainer(evenOdd: 0),*/
                    ],
                  ),
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(FontAwesomeIcons.pencilAlt),
              Icon(
                FontAwesomeIcons.pause,
                color: KButtonColor,
                size: 40,
              ),
              Icon(
                FontAwesomeIcons.stopwatch,
                color: Colors.pink,
                size: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SoundContainer extends StatelessWidget {
  Color whiteColor = Colors.white;
  Color iconColor = KButtonColor;
  final double evenOdd;

  SoundContainer({@required this.evenOdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      child: Padding(
        padding: EdgeInsets.only(top: evenOdd),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 5,
                          blurRadius: 7,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(3, 6))
                    ]),
                child: Icon(
                  FontAwesomeIcons.leaf,
                  color: iconColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Forest')
            ],
          ),
        ),
      ),
    );
  }
}

/*
Padding(
padding: const EdgeInsets.all(KDefaultPadding),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
padding: EdgeInsets.all(20.0),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white,
boxShadow: [
BoxShadow(
spreadRadius: 5,
blurRadius: 7,
color: Colors.white.withOpacity(0.5),
offset: Offset(3, 7))

]
),
child: Icon(FontAwesomeIcons.leaf,color: KButtonColor,),
),

Container(
padding: EdgeInsets.all(20.0),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white,
boxShadow: [
BoxShadow(
spreadRadius: 5,
blurRadius: 7,
color: Colors.white.withOpacity(0.5),
offset: Offset(3, 7))

]
),
child: Icon(FontAwesomeIcons.music,color: KButtonColor,),
),

Container(
padding: EdgeInsets.all(20.0),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white,
boxShadow: [
BoxShadow(
spreadRadius: 5,
blurRadius: 7,
color: Colors.white.withOpacity(0.5),
offset: Offset(3, 7))

]
),
child: Icon(FontAwesomeIcons.rocket,color: KButtonColor,),
),
],
),
),*/
