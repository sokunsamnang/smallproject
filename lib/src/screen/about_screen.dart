import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Color.fromRGBO(49, 39, 79, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text('Disclaimer: All the wallpaper in this app are under common creative license and the credit goes to their respective owners. These images are not endorsed by any of the prospective owners. and the images are used simply for aesthetic purposes. No copyright infringement is intended, and any request to remove one of the images/logos/names will be honored. All the images are obtained from pexels.com, pixabay.com as well as unsplash.com which are covered by the Creative Commons Zero license. That means all images are free for distribution and free for commercial use which also does not need any kind of attribution or credit.'),
        ),
      ),
    );
  }
}
