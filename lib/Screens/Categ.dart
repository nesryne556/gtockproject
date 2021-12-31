import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class categorie extends StatefulWidget {

  @override
  _categorieState createState() => _categorieState();
}

class _categorieState extends State<categorie> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
          body: Navigator(
              initialRoute: '/listcateg',
              onGenerateRoute: ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            openCloseDial: isDialOpen,
            backgroundColor: Colors.red,
            overlayColor: Colors.redAccent,
            spacing: 19,
            spaceBetweenChildren: 19,
            closeManually: true,
            children: [
              SpeedDialChild(
                  child: const Icon(Icons.list),
                  label: 'Liste categorie',
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  onTap: () {}
              ),
              SpeedDialChild(
                  child: const Icon(Icons.add),
                  label: 'Ajouter categorie',
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  onTap: () {}
              ),
            ],
          )),
    );
  }
}
