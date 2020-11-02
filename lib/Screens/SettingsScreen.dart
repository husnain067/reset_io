import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constants.dart';
class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: Color(0xFFE8E8E8),
        elevation: 0,
        title:Container(
          child: Column(
            children: [
              SizedBox(height: 5,),
            //  Icon(FontAwesomeIcons.music,color: KButtonColor,),
              SizedBox(height: 5,),
              Text(
                "Settings",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.clear,size: 30.0,color: KButtonColor,), onPressed: (){})
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,



      ),
      body: Column(
        children: [
          SizedBox(height: 50.0,),
          SettingsList(label: "Animated Scenes",iconData: FontAwesomeIcons.mountain,),
          SettingsListSwitch(label: "Unlock Reset Premium",status: false,),
          SettingsList(label: "Language",iconData: Icons.language,),
          SettingsListSwitch(label: "Unlock Reset Premium",status: true,),
          SettingsList(label: "Help",),
          SettingsList(label: "About",),
        ],
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  final String label;
  final IconData iconData;
  SettingsList({this.label,this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE8E8E8),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(KDefaultPadding),
        child: Row(
          children: [
            Text(label,style: TextStyle(color: Colors.black45,fontSize: 20.0),),
            Spacer(),
            Icon(iconData,color: KButtonColor,size: 22.0,)
          ],
        ),
      ),
    );
  }
}

class SettingsListSwitch extends StatelessWidget {
  final String label;
  final bool status;
  SettingsListSwitch({this.label,this.status});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE8E8E8),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(KDefaultPadding),
        child: Row(
          children: [
            Text(label,style: TextStyle(color: Colors.black45,fontSize: 20.0),),
            Spacer(),
           Switch(value: status, onChanged: (value){})
          ],
        ),
      ),
    );
  }
}

