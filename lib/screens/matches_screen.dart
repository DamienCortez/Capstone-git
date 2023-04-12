import 'package:flutter/material.dart';
import '../constants/matchesconstant.dart';
import 'dart:io';

class MatchesScreen extends StatefulWidget {
  var pageNum;
  var matchname;
  var credentials;
  var specialty;
  var bio;
  var distance;
  var rating;
  int type;

  MatchesScreen({
    @required this.pageNum,
    @required this.matchname,
    @required this.credentials,
    @required this.specialty,
    @required this.bio,
    @required this.distance,
    @required this.rating,
    @required this.type,
  });

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  var ImgCount = imgList.length;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 38.0,
            color: Colors.black,
            fontFamily: 'Belleza',
          ),
          children: <TextSpan>[
            new TextSpan(text: 'Meet your '),
            new TextSpan(
                text: widget.type == 1
                    ? 'Emotional Wellness'
                    : widget.type == 2
                        ? 'Physical Wellness'
                        : 'Financial Wellness',
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new TextSpan(text: ' matches'),
          ],
        ),
      ),
      // Container(
      //   height: MediaQuery.of(context).size.height - 300,
      //   width: MediaQuery.of(context).size.width - 50,
      //   child: Card(
      //     color: Colors.white,
      //     semanticContainer: true,
      //     clipBehavior: Clip.antiAliasWithSaveLayer,
      //     elevation: 6,
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //     child: Padding(
      //       padding: EdgeInsets.all(0.0),
      //       child: Column(children: <Widget>[
      //         Container(
      //           alignment: Alignment.center,
      //           height: MediaQuery.of(context).size.height - 600,
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.only(
      //                 bottomLeft: Radius.circular(150),
      //                 bottomRight: Radius.circular(150),
      //                 topLeft: Radius.circular(20),
      //                 topRight: Radius.circular(20)),
      //             child: Column(children: <Widget>[
      //               Container(
      //                 alignment: Alignment.center,
      //                 child: imgList.elementAt(widget.pageNum - 1),
      //               ),
      //             ]),
      //           ),
      //         ),
      //         Text(
      //           '${widget.matchname}, ${widget.credentials}',
      //           textAlign: TextAlign.left,
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 0, 0, 0),
      //             fontFamily: 'Inter',
      //             fontSize: 28,
      //           ),
      //         ),
      //         Text(
      //           '${widget.specialty}',
      //           textAlign: TextAlign.left,
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 250, 197, 197),
      //             fontFamily: 'Inter',
      //             fontSize: 22,
      //           ),
      //         ),
      //         Text(
      //           '${widget.bio}',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 0, 0, 0),
      //             fontFamily: 'Inter',
      //             fontSize: 18,
      //           ),
      //         ),
      //         new Spacer(),
      //         Padding(
      //             padding: const EdgeInsets.fromLTRB(
      //               15.0,
      //               5.0,
      //               15.0,
      //               15.0,
      //             ),
      //             child: Row(children: <Widget>[
      //               Icon(IconData(0xe5f9, fontFamily: 'MaterialIcons'),
      //                   color: Colors.yellow),
      //               Text(
      //                 widget.rating.toString(),
      //                 textAlign: TextAlign.left,
      //                 style: TextStyle(
      //                   color: Color.fromARGB(255, 0, 0, 0),
      //                   fontFamily: 'Inter',
      //                   fontSize: 18,
      //                 ),
      //               ),
      //               new Spacer(), // I just added one line
      //               Text(
      //                 widget.distance,
      //                 textAlign: TextAlign.right,
      //                 style: TextStyle(
      //                   color: Color.fromARGB(255, 0, 0, 0),
      //                   fontFamily: 'Inter',
      //                   fontSize: 18,
      //                 ),
      //               ),
      //             ])),
      //       ]),
      //     ),
      //   ),
      // ),
      Container(
        height: MediaQuery.of(context).size.height - 300,
        width: MediaQuery.of(context).size.width - 50,
        child: Card(
          color: Colors.white,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height - 600,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    imgList.elementAt(widget.pageNum - 1).image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '${widget.matchname}, ${widget.credentials}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Inter',
                    fontSize: 28,
                  ),
                ),
                Text(
                  '${widget.specialty}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 197, 197),
                    fontFamily: 'Inter',
                    fontSize: 22,
                  ),
                ),
                Text(
                  '${widget.bio}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Inter',
                    fontSize: 18,
                  ),
                ),
                new Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    15.0,
                    5.0,
                    15.0,
                    15.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        IconData(0xe5f9, fontFamily: 'MaterialIcons'),
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.rating.toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inter',
                          fontSize: 18,
                        ),
                      ),
                      new Spacer(), // I just added one line
                      Text(
                        widget.distance,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inter',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
