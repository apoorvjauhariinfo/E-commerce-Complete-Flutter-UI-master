import 'package:flutter/material.dart';  
  

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);
  


  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
  appBar: AppBar(
    title: const Text('BottomNavigationBar Demo'),
  ),
  bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        label: 'Camera',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
       BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Setting',
      ),
    ],
  ),
);
  }
}