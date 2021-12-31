import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class materiel extends StatefulWidget {

  @override
  _materielState createState() => _materielState();
}

class _materielState extends State<materiel> {

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
            initialRoute: '/listMaterial',
            onGenerateRoute: ,
          ),
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
                  label: 'List Material',
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                  onTap: () {}),
              SpeedDialChild(
                  child: const Icon(Icons.add),
                  label: 'Ajouter Material',
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                  onTap: () {}),

            ],
          )),
    );
  }
}
