import 'package:bmiapp/icon_content.dart';
import 'package:bmiapp/reusable_card.dart';
import 'package:bmiapp/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender gender) {
    gender == Gender.male
        ? maleCardColor == inactiveCardColor
            ? (
                maleCardColor = activeCardColor,
                femaleCardColor = inactiveCardColor
              )
            : maleCardColor = inactiveCardColor
        : femaleCardColor == inactiveCardColor
            ? (
                femaleCardColor = activeCardColor,
                maleCardColor = inactiveCardColor
              )
            : (femaleCardColor = inactiveCardColor);

    // if (gender == Gender.male) {
    //   if (maleCardColor == inactiveCardColor) {
    //     maleCardColor = activeCardColor;
    //     femaleCardColor = inactiveCardColor;
    //   } else {
    //     maleCardColor = inactiveCardColor;
    //   }
    // } else {
    //   if (femaleCardColor == inactiveCardColor) {
    //     femaleCardColor = activeCardColor;
    //     maleCardColor = inactiveCardColor;
    //   } else {
    //     femaleCardColor = inactiveCardColor;
    //   }
    // }
  }

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
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          updateColor(Gender.male);
                        },
                      );
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                          label: "MALE", icon: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                          label: "FEMALE", icon: FontAwesomeIcons.venus),
                    ),
                  ),
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
