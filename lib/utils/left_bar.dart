import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lista_compras/utils/color_palette.dart';
import 'package:lista_compras/widgets/vButton.dart';

import '../helper.dart';

class LeftBar extends StatelessWidget {
  final zoomDrawerController;

  const LeftBar({Key? key, this.zoomDrawerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu_black.svg"),
        onPressed: () => zoomDrawerController.toggle(),
      ),
      actions: _getActions(context),
    );
  }

  static List<Widget> _getActions(context) {
    List<Widget> items = <Widget>[];
    TextEditingController _t = TextEditingController();

    if(Helper.currentIndex != 0 && Helper.currentIndex != null) {
      return items;
    }

    items.add(
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext ctx) {
                  return AlertDialog(
                    title: Text("Nome da sua lista"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text('Título'),
                          SizedBox(height: 10,),
                          TextFormField(
                            controller: _t,
                            decoration: InputDecoration(
                                hintText: "Digite o título",
                                contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      VButton(
                        "Cancelar",
                        color: Colors.black,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                      ),
                      VButton(
                        "Adicionar",
                        color: ColorPalette.primaryColor,
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                      ),
                    ],
                  );
                });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        )
    );

    return items;
  }
}
