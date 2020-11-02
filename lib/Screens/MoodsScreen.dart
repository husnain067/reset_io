import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resetio/Constants.dart';
import 'package:resetio/Widgets/DefaultButtons.dart';

class MoodsScreen extends StatefulWidget {
  @override
  _MoodsScreenState createState() => _MoodsScreenState();
}

class _MoodsScreenState extends State<MoodsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: KBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "How are you feeling today?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 1,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 2,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 3,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 4,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                    ),
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 5,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 5;
                        });
                      },
                    ),
                    GestureDetector(
                      child: MoodContainer(
                        isS: selectedIndex == 6,
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = 6;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: size.width * 0.9,
                  height: 50,
                  child: KDefaultButton(
                    label: "Skip",
                    color: KButtonColor,
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, '/ObjectiveScreen');
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: KDefaultButton(
                    label: "Don't show again",
                    color: Color(0xFFFCFCFC),
                    textColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/ObjectiveScreen');
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}

class MoodContainer extends StatelessWidget {
  bool isS;

  MoodContainer({this.isS});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: this.isS ? KButtonColor : Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 5,
                blurRadius: 7,
                color: Colors.white.withOpacity(0.5),
                offset: Offset(0, 9))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Anxious",
            style: TextStyle(color: this.isS?Colors.white:Colors.black, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/svg/sad.svg",
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
