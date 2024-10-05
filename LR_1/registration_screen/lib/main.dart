import 'package:flutter/material.dart';

void main() {
    runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.png'),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Center(
            child: Container(
              width: 500,
              height: 300,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  const Text(
                    "SuperTech",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter your e-mail"
                    ),
                  ),
                  TextFormField(
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password"
                    ),
                  ),
                  TextFormField(
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Confirm password"
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      print("register button pressed"); // DBG only
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.account_box_rounded),
                          Text("Register"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        )
      )
    );
  }
}


