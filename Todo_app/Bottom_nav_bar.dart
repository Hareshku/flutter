
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex=0;

  void _onTap(index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text("Bottom Nav Bar"),
       centerTitle: true,
       backgroundColor: Colors.deepPurple,
     ),
     body:const Column(
       children: [
         Center(
           child: Text("Bottom Nav Bar"),
         )
       ],
     ),
     bottomNavigationBar: BottomNavigationBar(
       items:const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: "Home",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: "profile",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           label: "setting",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.notification_add),
           label: "Notification",
         ),
       ],
       currentIndex: _currentIndex,
       selectedItemColor: Colors.blue,
       unselectedItemColor: Colors.white,
       backgroundColor: Colors.deepPurple,
       onTap: _onTap,
       type: BottomNavigationBarType.fixed,
     ),
   ),
    );
  }
}
