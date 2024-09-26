import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/synchronise_programming.dart';
import 'ContainerPractice.dart';
import 'Form.dart';
import 'InfoPage.dart';
import 'bottom_nav_bar.dart';
import 'grid_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      routes: {"/Home_page":  (context)=> const HomePage(),
      "/infoPage" : (context)=> const infoPage(),
      },
    );
  }
}

