import 'package:flutter/material.dart';
class addCateg extends StatefulWidget {

  @override
  _addCategState createState() => _addCategState();
}

class _addCategState extends State<addCateg> {
  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'taper le nom',
            ),

          ),
          ElevatedButton(
            child: const Text('+'),
            onPressed: () async {}),
        ],
      ),
    );
  }
}
