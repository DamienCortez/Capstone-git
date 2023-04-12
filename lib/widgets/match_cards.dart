import 'package:flutter/material.dart';
import '../screens/matches.dart';
import '../screens/matches_screen.dart';
import '../constants/matchesconstant.dart';

class MatchCards extends StatefulWidget {
  @override
  State<MatchCards> createState() => _MatchCardsState();
}

class _MatchCardsState extends State<MatchCards> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/triangle.png'),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 38.0,
            color: Colors.black,
            fontFamily: 'Belleza',
          ),
          children: <TextSpan>[
            new TextSpan(
                text: 'Excited? We are,  ', style: new TextStyle(fontSize: 50)),
            new TextSpan(
              text: "\n Let’s meet your amazing dream team.",
            ),
          ],
        ),
      ),
      Card(
        color: Colors.white,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imgList.elementAt(0).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${matches[0].matchname}, ${matches[0].credentials}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${matches[0].specialty}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 197, 197),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        color: Colors.white,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imgList.elementAt(0).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${matches[0].matchname}, ${matches[0].credentials}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${matches[0].specialty}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 197, 197),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        color: Colors.white,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imgList.elementAt(0).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${matches[0].matchname}, ${matches[0].credentials}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${matches[0].specialty}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 197, 197),
                        fontFamily: 'Inter',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
