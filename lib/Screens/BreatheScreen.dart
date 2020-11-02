import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:resetio/Widgets/DefaultButtons.dart';

import '../Constants.dart';
class BreatheScreen extends StatefulWidget {
  @override
  _BreatheScreenState createState() => _BreatheScreenState();
}

class _BreatheScreenState extends State<BreatheScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Breathing Exercise",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
              SizedBox(
                height: 30,
              ),
              BreatheContainer(),
              SizedBox(
                height: 30,
              ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 padding: EdgeInsets.all(8.0),
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
                 child: Icon(FontAwesomeIcons.history,color: KButtonColor,),
               ),
               SizedBox(
                 width: 10,
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
                 child: Icon(FontAwesomeIcons.pause,color: KButtonColor,),
               ),
               SizedBox(
                 width: 10,
               ),
               Container(
                 padding: EdgeInsets.all(8.0),
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
                 child: Icon(FontAwesomeIcons.share,color: KButtonColor,),
               ),
             ],
           ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: size.width *0.9,
                height: 50,
                child: KDefaultButton(label: "Skip",color: KButtonColor,textColor: Colors.white,onTap: (){
                //  Navigator.pushNamed(context, '/BottomNavigation');

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
                //    Navigator.pushNamed(context, '/BottomNavigation');

                },),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class BreatheContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 5,
                blurRadius: 7,
                color: Colors.white.withOpacity(0.5),
                offset: Offset(0, 9))
          ]),
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: LiquidLinearProgressIndicator(

          value: 0.75,
          valueColor: AlwaysStoppedAnimation(KButtonColor),
          backgroundColor: Colors.white, //
          borderRadius: 50,
          direction: Axis.vertical,
          center: Text("Inhale",style: TextStyle(color: Colors.white),),
        ),
      )
    );
  }
}
