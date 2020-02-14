import 'package:flutter/widgets.dart';

class MyImage extends StatelessWidget{
  @override
  Widget build(context){
    var assetImage = new AssetImage('assets/images/image1.jpg');
    var image = new Image(image: assetImage, width: 48.0, height: 48.0);
    return new Container(child: image);
  }
}