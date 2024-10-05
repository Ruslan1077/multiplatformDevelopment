import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class _IconWithText extends StatelessWidget {
  final IconData icon;
  final String name;

  const _IconWithText({
  required this.icon,
  required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.grey,
      child: Row(
        children: [
          Icon(icon),
          Text(name)
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
              height: 400, width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _IconWithText(icon: Icons.home, name: "Home"),
                  _IconWithText(icon: Icons.favorite, name: "Favorite"),
                  _IconWithText(icon: Icons.add, name: "Add"),
                  _IconWithText(icon: Icons.access_time, name: "Access time"),
                  _IconWithText(icon: Icons.access_alarm, name: "Access alarm"),
                  _IconWithText(icon: Icons.accessibility, name: "Accessibility"),
                  _IconWithText(icon: Icons.accessible, name: "Accessible"),
                  _IconWithText(icon: Icons.account_balance, name: "Account balance"),
                ],
              )
          ),
        )
      )
    );
  }
}
