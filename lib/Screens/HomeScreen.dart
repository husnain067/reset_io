import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resetio/Widgets/BottomNavigation.dart';

import '../Constants.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        elevation: 0,
        title: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.list,color: KButtonColor,), onPressed: (){
            Navigator.pushNamed(context, '/SettingsScreen');
          })
        ],
      ),
      backgroundColor: Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: KBackgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: _tabSection(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 6,
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 40,
          child: TabBar(
              isScrollable: true,
              indicator: BoxDecoration(
                color: KButtonColor,
              ),
              // indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: "Home"),
                Tab(text: "All"),
                Tab(text: "Favourites"),
                Tab(text: "Spiritual"),
                Tab(text: "Stress"),
                Tab(text: "Anxiety"),
              ]),
        ),
        Expanded(
          //Add this to give height

          // height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            SingleChildScrollView(
              child: Wrap(
                children: [
                  HomeScreenView(),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
            ),
            Container(
              color: Colors.black12,
            ),
            Container(
              color: Colors.black12,
            ),
            Container(
              color: Colors.black12,
            ),
            Container(
              color: Colors.black12,
            ),
          ]),
        ),
      ],
    ),
  );
}

class HomeScreenView extends StatefulWidget {
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding,top: KDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeCard(img: "assets/images/sleep.png",label: "Sleep Stories",iconData: FontAwesomeIcons.moon,),
                SizedBox(width: 30,),
                HomeCard(img: "assets/images/confidence.jpg",label: "Ambiant Music",iconData: Icons.favorite,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding),
            child: Row(
              children: [
                HomeCard(img: "assets/images/melidate.png",label: "Quotes",iconData: FontAwesomeIcons.quoteRight,),
                SizedBox(width: 30,),
                HomeCard(img: "assets/images/sleep.png",label: "Meditation",iconData: FontAwesomeIcons.pagelines,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding),
            child: Row(
              children: [
                HomeMainCard(),
              ],
            ),

          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String img;
  final String label;
  final IconData iconData;
  HomeCard({this.label,this.img,this.iconData});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(5.0),
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),

            ),


          ),
          child: Container(
            margin: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),

                ),
              image: DecorationImage(
              image: AssetImage(img),
                fit: BoxFit.cover
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(iconData,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('146',style: TextStyle(color: Colors.white,fontSize: 10.0),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(label,style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class HomeMainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 2/1,
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/MusicScreen');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40)
              ),

            ),
            child: Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40)
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/melidate.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                      Icon(FontAwesomeIcons.pagelines,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('146',style: TextStyle(color: Colors.white,fontSize: 10.0),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text("Narrations",style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// uWidget
class OptionItem extends StatelessWidget {
  final String path;
  final String text;
  final Function onClick;
  OptionItem(
      {@required this.path, @required this.text, @required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: GestureDetector(
            onTap: () {
              print(text);
              onClick.call();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF4A4A4B),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/melidate.png",
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    text.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}