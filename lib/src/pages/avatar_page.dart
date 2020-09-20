import 'package:flutter/material.dart';

class AvatartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/df/0f/cd/df0fcd9fefce73aaa3bde2b7e9e4b3d3.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://edteam-media.s3.amazonaws.com/community/original/734a4895-971d-4dc7-b107-417a11692ac5.jpg'),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
