import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resetio/Widgets/DefaultButtons.dart';

import '../Constants.dart';
class ObjectiveScreen extends StatefulWidget {
  @override
  _ObjectiveScreenState createState() => _ObjectiveScreenState();
}

class _ObjectiveScreenState extends State<ObjectiveScreen> {
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
                  "What do you prefer today?",
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
                  ObjectiveContainer(img: "assets/images/sleep.png"),
                  ObjectiveContainer(img: "assets/images/melidate.png",),
                  ObjectiveContainer(img: "assets/images/sleep.png",),

                ],
              ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: size.width *0.9,
                  height: 50,
                  child: KDefaultButton(label: "Skip",color: KButtonColor,textColor: Colors.white,onTap: (){
                    Navigator.pushNamed(context, '/BottomNavigation');

                  },),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width *0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(

                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: KDefaultButton(label: "Don't show again",color: Color(0xFFFCFCFC),textColor: Colors.black,onTap: (){
                    Navigator.pushNamed(context, '/BottomNavigation');

                  },),
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
class ObjectiveContainer extends StatelessWidget {
  final String img;
  ObjectiveContainer({this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          ),
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
          Spacer(),
          Icon(FontAwesomeIcons.pagelines,color: Colors.white,),
          SizedBox(height: 12,),
          Text("Medidate",style: TextStyle(color: Colors.white),),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          )
        ],
      ),

    );
  }
}
