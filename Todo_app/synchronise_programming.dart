
import 'package:flutter/material.dart';

class Async_Await extends StatefulWidget {
  const Async_Await({super.key});

  @override
  State<Async_Await> createState() => _Async_AwaitState();
}

class _Async_AwaitState extends State<Async_Await> {
  Stream<String> getData() async*{
    while(true){
 await Future.delayed(
   const Duration(seconds: 1),
 );
 DateTime now=DateTime.now();
 yield "${now.hour}:${now.minute}:${now.second}";
  }}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
          body: Column(
           children: [
             Center(
               child: StreamBuilder(stream: getData(), builder:(context, snapshot){
                 if(snapshot.connectionState== ConnectionState.waiting){
                   return const CircularProgressIndicator();
                 }
                 else if( snapshot.hasError){
                   return Text("${snapshot.error}");
                 }
                 else{
                   return Text("${snapshot.data}", style: TextStyle(color: Colors.greenAccent, fontSize: 64),);
                 }
               },),
             )
           ],
          ),
      ),
    );
  }
}
