import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context) => const HomeScreen(),
        'listView2': (BuildContext context) => const Listview2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
      };
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
          );
      }

}