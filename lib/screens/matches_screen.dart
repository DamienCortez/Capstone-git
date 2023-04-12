import 'package:flutter/material.dart';
import '../constants/matchesconstant.dart';
import 'dart:io';

class MatchesScreen extends StatefulWidget {
  var pageNum;
  var matchname;
  var credentials;
  var specialty;
  var image;
  var bio;
  var distance;
  var rating;

  MatchesScreen({
    @required this.pageNum,
    @required this.matchname,
    @required this.credentials,
    @required this.specialty,
    @required this.image,
    @required this.bio,
    @required this.distance,
    @required this.rating,
  });

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  var ImgCount = imgList.length;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Meet your Emotional Wellness Matches',
        style: const TextStyle(
          fontFamily: 'Belleza',
          fontSize: 45,
          color: Colors.black,
        ),
      ),
      Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(children: <Widget>[
            //damien put the words and stuff here

            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Column(children: <Widget>[
                imgList.elementAt(widget.pageNum - 1),
                Text(widget.matchname),
                Text(widget.credentials),
                Text(widget.specialty),
                Text(widget.bio),
                Text(widget.distance),
                Text(widget.rating.toString()),
              ]),
            ),
          ]),
        ),
      ),
    ]);
  }
}
