import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes {
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    //
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'listView', name: 'list View 2', screen: const Listview2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - cards', screen: const CardScreen(), icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context) => const HomeScreen(),
        'listView2': (BuildContext context) => const Listview2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      }; */
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
          );
      }

}