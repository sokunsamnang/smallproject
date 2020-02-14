import 'package:flutter/material.dart';
import 'package:wallpaper/src/screen/home_screen.dart';
import 'package:wallpaper/src/screen/login_screen.dart';

class AppDrawer extends StatefulWidget{
  @override
  _AppDrawerState createState() => _AppDrawerState();
}


class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.home,text: 'Home', onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),);
              }),
          _createDrawerItem(icon: Icons.settings, text: 'Setting',),
          Divider(),
          _createDrawerItem(icon: Icons.exit_to_app, text:           'Logout', onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),);
              }),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/image01.jpg'),
              fit: BoxFit.cover,
                ),
              ),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 125.0,
            left: 16.0,
            child: Text("WallPix - Wallpaper",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

}