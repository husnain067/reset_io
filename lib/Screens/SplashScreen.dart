import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () async {
        Navigator.pushReplacementNamed(context, '/MoodsScreen');

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/splash.png")
              ,
            ),
          ),

        ],
      ),
    );
  }
}
