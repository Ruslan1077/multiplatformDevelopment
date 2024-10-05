import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  const IconWithText({
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        StyledText(text, false, 16)
      ],
    );
  }
}

class ButtonWithIconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final Color buttonColor;

  const ButtonWithIconAndText({
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor,
    required this.buttonColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        print("ButtonWithIconAndText pressed");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 30),
          StyledText(text, false, 15)
        ],
      )
    );
  }
}

class TextUnderText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final bool isBold;
  final double textSize;
  final Color topTextColor;
  final Color bottomTextColor;

  const TextUnderText({
    required this.topText,
    required this.bottomText,
    this.isBold = false,
    this.textSize = 12, // Do we have a better way to do it?
    this.topTextColor = Colors.white,
    this.bottomTextColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(topText, isBold, textSize, textColor: topTextColor),
        StyledText(bottomText, isBold, textSize, textColor: bottomTextColor)
      ]
    );
  }
}

class StyledText extends StatelessWidget {
  final String text;
  final bool isBold;
  final double textSize;
  final Color textColor;

  StyledText(this.text, this.isBold, this.textSize, {this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: textSize,
            color: textColor
        )
    );
  }
}

class CustomButton extends StatelessWidget {
  final double buttonBorderSize;
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;

  CustomButton(this.icon, this.iconColor, this.buttonBorderSize, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        print("Custom button pressed");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(buttonBorderSize, buttonBorderSize),
        padding: const EdgeInsets.all(5)
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}