import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/background.dart';
import 'package:flutter_application_3/calculate.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/menu/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "images/choice.png",
            height: size.height * 0.35,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Menu())));
            },
            child: const Text("WELCOME"),
          )
        ],
      ),
    );
  }
}
