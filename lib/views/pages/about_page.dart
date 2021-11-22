import 'package:flutter/material.dart';
import 'package:lista_compras/utils/layout.dart';

class AboutPage extends StatelessWidget {

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      content: Container(
        child: Center(
          child: Text("About"),
        ),
      ),
    );
  }
}
