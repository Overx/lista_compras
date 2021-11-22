import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lista_compras/routes.dart';
import 'package:lista_compras/utils/color_palette.dart';

final ThemeData theme = ThemeData();

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class NavKey{
  static final navKey = new GlobalKey<NavigatorState>();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavKey.navKey,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: ColorPalette.primaryColor,
          secondary: ColorPalette.highlightColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      title: 'Lista de Compras',
      initialRoute: "/",
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
