import 'package:flutter/material.dart';
import 'package:lista_compras/utils/color_palette.dart';

class VButton extends StatelessWidget {

  String text;
  Function() onPressed;

  Color color;
  Color textColor;

  double SizeW;
  double SizeH;

  VButton(this.text, { required this.onPressed, this.color = ColorPalette.primaryColor, this.textColor = Colors.white, this.SizeW = 110, this.SizeH = 15 }) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(SizeW, SizeH),
          primary: color,
          // padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          textStyle: TextStyle(fontSize: 15, color: textColor),
        )
    );
  }
}
