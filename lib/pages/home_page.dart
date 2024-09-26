import 'package:flutter/material.dart';
import 'package:todo_app/pages/Toggle_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todolist = [
    ['Learn React', false],
    ['Learn flutter', false],
    ['Learn Java', false],
    ['Learn javaScript', false],
    ['Learn AI', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const ToggleMenu(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white30,
        appBar: AppBar(
          // leading: const ToggleMenu(),
          title: const Text("Todo App Bar"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert)),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(child: Text('Item1')),
                  const PopupMenuItem(child: Text('Item2')),
                  const PopupMenuItem(child: Text('Item3')),
                  const PopupMenuItem(child: Text('Item4')),
                ];
              },
            ),
          ],
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),

        body: ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 0,
                right: 20,
                left: 20,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      todolist[index][0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          },

        ),

        floatingActionButton: Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 0,
                      left: 20,
                      right: 20,
                    ),

                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed("/infoPage");
                      },
                      child: Text('Add new Items'),
                    ),
                  )
              ),
            ],
          ),
        )

    );
    // );
  }
}