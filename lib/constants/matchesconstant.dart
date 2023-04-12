import 'package:flutter/material.dart';
import '../screens/matches_screen.dart';
import '../widgets/match_cards.dart';

//You will dynamically add the therapist images from the database to a list with the same structure as below
List imgList = [
  Image.asset(
    'assets/jessica.jpg',
    fit: BoxFit.cover,
  ),
  Image.asset(
    'assets/jessica.jpg',
    fit: BoxFit.cover,
  ),
  Image.asset(
    'assets/jessica.jpg',
    fit: BoxFit.cover,
  ),
];
//You will dynamically add the matches data from the database to a list with the same structure as below
List<dynamic> matches = [
  MatchesScreen(
    pageNum: 1,
    matchname: "Jessica Gaddy",
    credentials: "LCSW",
    specialty: "Clinical Psychology",
    bio:
        "I am the founder of Nia Noire Therapy + Wellness with over 12 years experience in the wellness industry.",
    distance: "5 miles away",
    rating: 5.0,
    //type of match, like emotional, physical, financial
    type: 1,
  ),
  MatchesScreen(
    pageNum: 2,
    matchname: "Jessica Gaddy",
    credentials: "LCSW",
    specialty: "Clinical Psychology",
    bio:
        "I am the founder of Nia Noire Therapy + Wellness with over 12 years experience in the wellness industry.",
    distance: "5 miles away",
    rating: 5.0,
    type: 2,
  ),
  MatchesScreen(
    pageNum: 3,
    matchname: "Jessica Gaddy",
    credentials: "LCSW",
    specialty: "Clinical Psychology",
    bio:
        "I am the founder of Nia Noire Therapy + Wellness with over 12 years experience in the wellness industry.",
    distance: "5 miles away",
    rating: 5.0,
    type: 3,
  ),
  MatchCards(),
];
