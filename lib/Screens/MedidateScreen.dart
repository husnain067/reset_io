import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constants.dart';

class MeditateScreen extends StatefulWidget {
  @override
  _MeditateScreenState createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
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
                    "Medidate",
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
                  MeditationView(),
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

class MeditationView extends StatefulWidget {
  @override
  _MeditationViewState createState() => _MeditationViewState();
}

class _MeditationViewState extends State<MeditationView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: KDefaultPadding,
                right: KDefaultPadding,
                top: KDefaultPadding * 2),
            child: Row(
              children: [
                MeditationFrontCard(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: KDefaultPadding, right: KDefaultPadding),
            child: Row(
              children: [
                MeditateSquareCard(
                  img: "assets/images/melidate.png",
                  label: "Quotes",
                  iconData: FontAwesomeIcons.quoteRight,
                ),
                SizedBox(
                  width: 30,
                ),
                MeditateSquareCard(
                  img: "assets/images/sleep.png",
                  label: "Morning",
                  iconData: FontAwesomeIcons.pagelines,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: KDefaultPadding, right: KDefaultPadding),
            child: Row(
              children: [
                MeditationFrontCard(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: KDefaultPadding, right: KDefaultPadding),
            child: Row(
              children: [
                MeditationFrontCard(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class MeditationFrontCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/MusicScreen');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),

                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/sunshine.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.center)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Mindfulness Meditation",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "16 mins",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.heartbeat,color: Colors.white,)
                        ],
                      ),
                    )
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
class MeditateSquareCard extends StatelessWidget {
  final String img;
  final String label;
  final IconData iconData;
  MeditateSquareCard({this.label,this.img,this.iconData});
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
              padding: const EdgeInsets.only(top: 30.0,left: 4.0,right: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      Text(label,maxLines: 2,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text(
                        "16 mins",
                        style: TextStyle(
                          fontSize: 10.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),

                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(FontAwesomeIcons.heartbeat,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
