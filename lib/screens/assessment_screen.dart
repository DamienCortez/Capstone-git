import 'package:flutter/material.dart';

import '../widgets/porter_slider.dart';

class AssessmentScreen extends StatefulWidget {
  var pageNum;
  var title;
  var subTitle =
      'Physical wellness is about adopting healthy habits such as routine medical exams, adequate sleep, a balanced diet, regular exercise, and more.';
  var firstButton;
  var secondButton;
  var thirdButton;
  var fourthButton;
  var fifthButton;
  var sixthButton;
  var firstOption;
  var secondOption;
  var thirdOption;
  var fourthOption;
  var fifthOption;
  var sixthOption;

  AssessmentScreen({
    @required this.pageNum,
    @required this.title,
    @required this.subTitle,
    @required this.firstButton,
    @required this.secondButton,
    @required this.thirdButton,
    @required this.fourthButton,
    @required this.fifthButton,
    @required this.sixthButton,
    @required this.firstOption,
    @required this.secondOption,
    @required this.thirdOption,
    @required this.fourthOption,
    @required this.fifthOption,
    @required this.sixthOption,
  });

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'STAGE ${widget.pageNum} OF 6',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          color: Colors.white,
          indent: 15,
          endIndent: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Let\'s learn about your ${widget.title}.',
            style: const TextStyle(
              fontFamily: 'Belleza',
              fontSize: 45,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            widget.subTitle,
            style: const TextStyle(
              fontFamily: 'Belleza',
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        const PorterSlider(),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Select up to three areas of focus or growth.',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'first',
            groupValue: widget.firstButton ? 'first' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.firstButton = !widget.firstButton;
              });
            },
          ),
          title: Text(
            widget.firstOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'second',
            groupValue: widget.secondButton ? 'second' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.secondButton = !widget.secondButton;
              });
            },
          ),
          title: Text(
            widget.secondOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'third',
            groupValue: widget.thirdButton ? 'third' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.thirdButton = !widget.thirdButton;
              });
            },
          ),
          title: Text(
            widget.thirdOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'fourth',
            groupValue: widget.fourthButton ? 'fourth' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.fourthButton = !widget.fourthButton;
              });
            },
          ),
          title: Text(
            widget.fourthOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'fifth',
            groupValue: widget.fifthButton ? 'fifth' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.fifthButton = !widget.fifthButton;
              });
            },
          ),
          title: Text(
            widget.fifthOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Radio(
            toggleable: true,
            value: 'sixth',
            groupValue: widget.sixthButton ? 'sixth' : '',
            activeColor: Theme.of(context).buttonColor,
            onChanged: (value) {
              setState(() {
                widget.sixthButton = !widget.sixthButton;
              });
            },
          ),
          title: Text(
            widget.sixthOption,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
