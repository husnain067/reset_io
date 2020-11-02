import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resetio/Constants.dart';
import 'package:resetio/Screens/MusicScreen.dart';
import 'package:resetio/Screens/SoundScreens.dart';
import 'MedidateScreen.dart';

class StoriesScreen extends StatefulWidget {
  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
Color circleBackground=Color(0xFF3A70C1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        elevation: 0,
        title:Container(
          child: Column(
            children: [
              SizedBox(height: 5,),
              Icon(FontAwesomeIcons.moon,color: KButtonColor,),
              SizedBox(height: 5,),
              Text(
                "Stories",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
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
                  StoriesScreenView(),
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

class StoriesScreenView extends StatefulWidget {
  @override
  _StoriesScreenViewState createState() => _StoriesScreenViewState();
}

class _StoriesScreenViewState extends State<StoriesScreenView> {
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
                StoriesFrontCard(label:  "Inner Peace",img: "assets/images/innerpeace.png",),
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
                StoriesFrontCard(label: "Falling Asleep",img: "assets/images/sleep.png",),
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

class StoriesFrontCard extends StatelessWidget {
  final String label;
  final String img;
 final Function function;
  StoriesFrontCard({this.label,this.img,this.function});
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
                      image: AssetImage(img),
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
                         label,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
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


/*return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 5, child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Meditate",style: TextStyle(color: Colors.black),),
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
              MeditateScreen(),
          Icon(Icons.history),
          Icon(Icons.history),
              Icon(Icons.history),
              Icon(Icons.history),
        ]),
      )),



      );*/
