import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_gh/constants/colors.dart';
import 'package:smart_gh/view/coldside.dart';
import 'package:smart_gh/view/hotside.dart';
import 'package:smart_gh/view/settings.dart';
import 'package:smart_gh/widgets/widgets.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  // Variables , lists
  int index = 0;
  //Icons
  final items = const <Widget>[
    Icon(Icons.local_fire_department_outlined),
    Icon(Icons.ac_unit),
    Icon(Icons.settings_rounded)
  ];

  //  List of Pages
  final pages = const  [
    hotSide(),
    coldSide(),
    settings()
  ];

  // Objects
  MyColors mc = MyColors();
  Widgets wd = Widgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          items: items,
          height: 60.0,
          index: index,
          onTap: (index)=>setState(() {
            this.index = index;
          }),
          color: mc.primaryBlue,
          backgroundColor: Colors.white,

        ),
      ),
      body: SafeArea(
        child: pages[index]
      ),
    );
  }
}
