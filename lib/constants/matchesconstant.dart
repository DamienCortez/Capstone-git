import 'package:flutter/material.dart';
import '../screens/matches_screen.dart';

List imgList = [
  Image.asset('assets/jessica.jpg'),
  Image.asset('assets/damien.jpg'),
];
List<MatchesScreen> matches = [
  MatchesScreen(
    pageNum: 1,
    matchname: "Jessica Gaddy",
    credentials: "LCSW",
    specialty: "Clinical Psychology",
    image: 'assets/jessica.jpg',
    bio:
        "I am the founder of Nia Noire Therapy + Wellness with over 12 years experience in the wellness industry.",
    distance: "5 miles away",
    rating: 5.0,
  ),
  MatchesScreen(
    pageNum: 2,
    matchname: "Daddy Damien",
    credentials: "BBC",
    specialty: "Full Body Pleasure",
    image: 'assets/damien.jpg',
    bio: "I'm only gay if you pay me extra",
    distance: "In your bed",
    rating: 5.0,
  ),
];
