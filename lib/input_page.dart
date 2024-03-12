import 'package:bmiapp/icon_content.dart';
import 'package:bmiapp/reusable_card.dart';
import 'package:bmiapp/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child:
                      IconContent(label: "MALE", icon: FontAwesomeIcons.mars),
                ),
                Expanded(
                  child: IconContent(
                      label: "FEMALE", icon: FontAwesomeIcons.venus),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: primaryBackgroundColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: primaryBackgroundColor),
                ),
                Expanded(
                  child: ReusableCard(color: primaryBackgroundColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerBackgroundColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
