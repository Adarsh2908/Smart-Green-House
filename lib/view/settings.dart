import 'package:flutter/material.dart';
import 'package:smart_gh/constants/colors.dart';
import 'package:smart_gh/widgets/widgets.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  // Objects
  final mc = MyColors();
  final wd = Widgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mc.primaryBlue,
        automaticallyImplyLeading: false,
        title: wd.putText("SETTINGS ", 16, 1.0, Colors.white),
        elevation: 0.0,
      ),
    );
  }
}
