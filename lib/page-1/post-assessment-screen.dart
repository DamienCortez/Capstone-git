import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // postassessmentscreenmfv (1:13)
        padding: EdgeInsets.fromLTRB(26*fem, 19*fem, 15.01*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xfffff7eb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // topbarNZE (1:76)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 11.99*fem, 0*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // hamburgerh5i (1:64)
                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 250*fem, 0*fem),
                    width: 38*fem,
                    height: 31*fem,
                    child: Image.asset(
                      'assets/page-1/images/hamburger.png',
                      width: 38*fem,
                      height: 31*fem,
                    ),
                  ),
                  Container(
                    // notificationbellbRz (1:65)
                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 17*fem, 0*fem),
                    width: 21*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/notification-bell.png',
                      width: 21*fem,
                      height: 30*fem,
                    ),
                  ),
                  Container(
                    // circleavatarW3A (1:66)
                    width: 45*fem,
                    height: 45*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(22.5*fem),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/circle-avatar-bg.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame2608133oHA (1:15)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // picturesjwW (1:78)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.99*fem, 24*fem),
                    width: double.infinity,
                    height: 185*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // trianglefigurefaG (1:16)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(67*fem, 67*fem, 66*fem, 80*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/polygon-2.png',
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // eyesn2c (1:18)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                width: 56*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/page-1/images/eyes.png',
                                  width: 56*fem,
                                  height: 25*fem,
                                ),
                              ),
                              Container(
                                // mouthURE (1:27)
                                width: 10*fem,
                                height: 10*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mouth.png',
                                  width: 10*fem,
                                  height: 10*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // diamondfigurengp (1:30)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 115*fem,
                          height: 160*fem,
                          child: Image.asset(
                            'assets/page-1/images/diamond-figure.png',
                            width: 115*fem,
                            height: 160*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // greatweveidentifiedthefollowin (1:38)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
                    width: double.infinity,
                    constraints: BoxConstraints (
                      maxWidth: 368*fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 32*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2189999819*ffem/fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Great!',
                            style: SafeGoogleFont (
                              'Belleza',
                              fontSize: 40*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1525*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: ' We’ve identified\nthe following wellness\nfocus points perfect for your growth.',
                            style: SafeGoogleFont (
                              'Belleza',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1525*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogroupkfixdsn (CqXZdvDEPVmRmBSBUWkfix)
                    margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
                    width: 382.99*fem,
                    height: 828*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // piechartjvp (1:47)
                          left: 15*fem,
                          top: 446*fem,
                          child: Container(
                            width: 367.99*fem,
                            height: 379.34*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // ellipse28SqE (1:48)
                                  left: 5.0642547607*fem,
                                  top: 49.1538085938*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 326.11*fem,
                                      height: 326.11*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(163.0550384521*fem),
                                          color: Color(0xff495947),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon7vVW (1:52)
                                  left: 23.1972198486*fem,
                                  top: 134.7288208008*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 147.2*fem,
                                      height: 168.84*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-7.png',
                                        width: 147.2*fem,
                                        height: 168.84*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon6DjW (1:53)
                                  left: 107.8132400513*fem,
                                  top: 184.4575805664*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 193.25*fem,
                                      height: 194.88*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-6.png',
                                        width: 193.25*fem,
                                        height: 194.88*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon885n (1:54)
                                  left: 60.9248428345*fem,
                                  top: 192.0662841797*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 165.61*fem,
                                      height: 170.94*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-8.png',
                                        width: 165.61*fem,
                                        height: 170.94*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon92S4 (1:55)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 253.75*fem,
                                      height: 258.2*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-9.png',
                                        width: 253.75*fem,
                                        height: 258.2*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon109Fn (1:56)
                                  left: 106.4687156677*fem,
                                  top: 50.1645507812*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 189.72*fem,
                                      height: 194.83*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-10.png',
                                        width: 189.72*fem,
                                        height: 194.83*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // polygon11GLQ (1:57)
                                  left: 172.5*fem,
                                  top: 139*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 128.4*fem,
                                      height: 148*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/polygon-11.png',
                                        width: 128.4*fem,
                                        height: 148*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // physicalzGQ (1:58)
                                  left: 53.2485466003*fem,
                                  top: 207.5831298828*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 69*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Physical',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // spiritualsqz (1:59)
                                  left: 96.240032196*fem,
                                  top: 281*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 69*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Spiritual\n',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // financialRm2 (1:60)
                                  left: 180.240032196*fem,
                                  top: 281*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Financial\n',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // occupationaleducationaluw6 (1:61)
                                  left: 152.9940872192*fem,
                                  top: 196*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 215*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Occupational/\nEducational',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // socialBtc (1:62)
                                  left: 193.2540512085*fem,
                                  top: 117*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 49*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Social',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // memtalemotionalTbE (1:63)
                                  left: 37.0695877075*fem,
                                  top: 95*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 155*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Memtal/\nEmotional',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group1L9E (1:77)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 365*fem,
                            height: 828*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector2TDr (1:39)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 38*fem),
                                  width: 111*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-2.png',
                                    width: 111*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Container(
                                  // autogrouptw4caJU (CqXaBV8xwQw9dehLMjTw4C)
                                  width: double.infinity,
                                  height: 760*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle13XDi (1:40)
                                        left: 0*fem,
                                        top: 50*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 365*fem,
                                            height: 710*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(15*fem),
                                                color: Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x3f000000),
                                                    offset: Offset(0*fem, 4*fem),
                                                    blurRadius: 2*fem,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // emotionalwellnessinvolvedsbein (1:46)
                                        left: 22*fem,
                                        top: 239*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 308*fem,
                                            height: 120*fem,
                                            child: Text(
                                              'Emotional wellness involveds being able to cope effectively with t he difficulties of life. Being emotianlly aware, and having healthy relationships with yourself and others.',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.875*ffem/fem,
                                                color: Color(0xff868686),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // individualtherapyCUG (1:45)
                                        left: 83.5*fem,
                                        top: 120*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 195*fem,
                                            height: 100*fem,
                                            child: Text(
                                              'Individual \nTherapy',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Belleza',
                                                fontSize: 48*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.0416666667*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // ellipse26guE (1:41)
                                        left: 135*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 100*fem,
                                            height: 100*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(50*fem),
                                                color: Color(0xffef6138),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // heartnhN (1:42)
                                        left: 161*fem,
                                        top: 30*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 48*fem,
                                            height: 41*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/heart.png',
                                              width: 48*fem,
                                              height: 41*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}