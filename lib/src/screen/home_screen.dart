import 'package:flutter/material.dart';
import 'package:wallpaper/widgets/drawer.dart';
import 'package:wallpaper/src/screen/about_screen.dart';

/*--------------Grid View----------------*/
class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Widget build(context){
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('WallPix'),
        backgroundColor: Color.fromRGBO(49, 39, 79, 1),
        
        //About us Icon
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()
                ),
              );
            },
            child: Icon(Icons.help_outline, size: 30.0,),
            ),
          )
        ],
      ),
      
      
      //Body Content
      body: new GridView.extent(maxCrossAxisExtent: 150.0, 
        mainAxisSpacing: 5.0, 
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
      children: _buildGridTiles(27),
      ),
    );
  }
}

  List<Widget> _buildGridTiles(numberOfTiles){
    List<Container> containers = new List<Container>.generate(numberOfTiles, (int index){
        //index 0,1,2.....
        final imageName = index < 9 ? 'assets/images/image0${index + 1}.jpg' : 'assets/images/image${index + 1}.jpg';
        return new Container(
          child: new Image.asset(imageName, fit: BoxFit.fill),
        );
      }
    );
    return containers;
  }

