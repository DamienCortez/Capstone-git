import 'package:flutter/material.dart';

class PorterSlider extends StatefulWidget {
  const PorterSlider({Key key}) : super(key: key);

  @override
  State<PorterSlider> createState() => _PorterSliderState();
}

class _PorterSliderState extends State<PorterSlider> {
  var _rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Padding(
        //   padding: EdgeInsets.only(left: 15.0),
        //   child: Text(
        //     'When in need of help I tend to panic.',
        //     style: TextStyle(
        //       fontFamily: 'Montserrat',
        //       fontSize: 14,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'How would you rate your satisfaction in this area?',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Slider(
          min: 1,
          max: 5,
          value: _rating,
          divisions: 4,
          // label: '${_rating.toInt()}', // this shows the value above each section as an int
          activeColor: Color.fromARGB(255, 44, 88, 82),
          inactiveColor: Colors.white,
          onChanged: (value) {
            setState(() {
              _rating = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Unsatisfied'),
              Text('Average\t\t\t\t'),
              Text('Satisfied'),
            ],
          ),
        ),
      ],
    );
  }
}
