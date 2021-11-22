import 'package:flutter/material.dart';
import 'package:lista_compras/utils/layout.dart';

class SettingPage extends StatelessWidget {

  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      content: Container(
        child: Center(
          child: Text("Setting"),
        ),
      ),
    );
  }
}
