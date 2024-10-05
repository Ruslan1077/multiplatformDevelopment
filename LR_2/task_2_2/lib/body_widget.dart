import 'package:flutter/material.dart';
import 'package:side_screen/util_components.dart';

class BodyWidget extends StatelessWidget {
  final Color iconColor;
  final Color textColor;
  final Color buttonBackgroundColor;

  BodyWidget({
    this.iconColor = Colors.grey,
    this.textColor = Colors.white,
    this.buttonBackgroundColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 450,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonWithIconAndText(icon: Icons.browse_gallery, iconColor: iconColor, text: "Browse", textColor: textColor, buttonColor: buttonBackgroundColor),
            ButtonWithIconAndText(icon: Icons.remove_red_eye_outlined, iconColor: iconColor, text: "Subscribe", textColor: textColor, buttonColor: buttonBackgroundColor),
            ButtonWithIconAndText(icon: Icons.favorite_border_outlined, iconColor: iconColor, text: "Favorite", textColor: textColor, buttonColor: buttonBackgroundColor),
            ButtonWithIconAndText(icon: Icons.history, iconColor: iconColor, text: "History", textColor: textColor, buttonColor: buttonBackgroundColor),
            ButtonWithIconAndText(icon: Icons.payment_outlined, iconColor: iconColor, text: "Payments", textColor: textColor, buttonColor: buttonBackgroundColor),
            ButtonWithIconAndText(icon: Icons.settings, iconColor: iconColor, text: "Account settings", textColor: textColor, buttonColor: buttonBackgroundColor),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: (){
                print("Logout pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white10
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Logout"),
                  const SizedBox(width: 30),
                  Icon(Icons.logout, color: iconColor)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
  
}