import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seekbar/seekbar.dart';

import '../Constants.dart';
class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  Color circleBackground=Color(0xFF3A70C1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(KDefaultPadding),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/innerpeace.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 40.0,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circleBackground,
                    ),
                    child: Icon(Icons.arrow_downward,color: Colors.white,),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff0E3D5D),
                    ),
                    child: Icon(Icons.cloud_download,color: Colors.white,),
                  ),


                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circleBackground,
                    ),
                    child: Icon(FontAwesomeIcons.history,color: Colors.white,),
                  ),


                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circleBackground,
                    ),
                    child: Icon(Icons.favorite_border,color: Colors.white,),
                  ),


                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circleBackground,
                    ),
                    child: Icon(Icons.share,color: Colors.white,),
                  ),


                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.history,color: Colors.white,),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2,color: Colors.white),

                    ),
                    child: Center(child: Icon(FontAwesomeIcons.play,color: Colors.green,)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(FontAwesomeIcons.history,color: Colors.white,),
                ],
              ),
              SizedBox(height: 20.0,),
              SeekBar(
                value: 0.45,
                progressColor: Colors.green,
                secondProgressColor: Colors.blue.withOpacity(0.5),
              ),
              SizedBox(height: 4.0,),
              Row(
                children: [
                  Text(
                    "0:45",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "3:45",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )

            ],
          )
      ),
    );
  }
}
