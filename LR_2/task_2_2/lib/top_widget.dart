import 'package:flutter/material.dart';
import 'package:side_screen/util_components.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 450,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              children: [
                const TextUnderText(topText: "Hello,", bottomText: "Samantha!", isBold: true, textSize: 20),
                const SizedBox(width: 200),
                CustomButton(Icons.notifications_none, Colors.white, 20, Colors.black),
                CustomButton(Icons.close, Colors.white, 20, Colors.black)
              ],
            ),
            const Divider(color: Colors.grey),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 20, backgroundImage: AssetImage('photo.png')),
                TextUnderText(topText: "Listened time:", bottomText: "24:15:05", bottomTextColor: Colors.grey),
                TextUnderText(topText: "Playlists:", bottomText: "27", bottomTextColor: Colors.grey),
                TextUnderText(topText: "Following:", bottomText: "179", bottomTextColor: Colors.grey),
              ],
            )
          ],
        ),
      )
    );
  }
}