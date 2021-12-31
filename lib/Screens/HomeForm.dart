import 'package:flutter/material.dart';
import 'package:login_with_signup/router/route.dart';

 class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
        ),
        body: Navigator(
          initialRoute: '/family',
          onGenerateRoute:homeRoute,
        ),
        bottomNavigationBar:
        BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.preview_outlined),
            label: 'Family',

          ),
        ],
      )
      );
  }

}