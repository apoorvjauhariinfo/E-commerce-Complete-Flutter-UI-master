import 'package:flutter/widgets.dart';

import 'screens/home/home_screen.dart';

import 'screens/init_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  
  HomeScreen.routeName: (context) => const HomeScreen(),
 
};
