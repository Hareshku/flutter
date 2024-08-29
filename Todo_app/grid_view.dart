
import 'package:flutter/material.dart';
import 'package:todo_app/pages/Toggle_menu.dart';

class GridViewPractice extends StatefulWidget {
  const GridViewPractice({super.key});
  @override
  State<StatefulWidget> createState() => GridviewPracticeState();
}

class GridviewPracticeState extends State<GridViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ToggleMenu(),
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(28, 158, 234, 0.927),

        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: (){}, icon:Icon(Icons.notification_add) ),
          PopupMenuButton(
            itemBuilder: (context) {
              return[
                const PopupMenuItem(value : 1, child: Text("Option 1")),
                const PopupMenuItem(value : 2, child: Text("Option 2")),
                const PopupMenuItem(value: 3, child: Text("Option 3",style: TextStyle(color: Colors.white),)),
              ];
            },
            onSelected: (value) {
              print("Option $value");
            },
            color: Colors.red,

          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 10,
          bottom: 10,
          right: 0,
        ),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ), itemBuilder: (context, index){
          return Container(
            transform: Matrix4.rotationZ(.3),
            color: Colors.blue,
            child: Text("itemis# $index"),
          );
        }, itemCount: 15,),
      )
    );
  }
}
