import 'package:flutter/material.dart';

class infoPage extends StatefulWidget {
  const infoPage({super.key});

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
  DateTime selectedDate= DateTime.now();
  TimeOfDay selectedTime= TimeOfDay.now();
  static const String id="infoPage";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InfoPage"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: TextFormField(
                decoration:const InputDecoration(
                  hintText: "Title",
                  border: OutlineInputBorder(),
                  label: Text("Title"),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: TextFormField(
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: "write discription here",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            

            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  // Text("${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
                   ElevatedButton(
                    onPressed: () async {
                      final DateTime? dateTime =await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate:DateTime(3000),
                      );
                      if(dateTime!=null){
                        setState(() {
                          selectedDate=dateTime;
                        });
                      }
                    },
                    child: const Text("Choose date"),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () async {
                      final TimeOfDay?timeOfDay= await showTimePicker(
                          context: context,
                          initialTime: selectedTime,
                           initialEntryMode: TimePickerEntryMode.dial,
                      );
                      if(timeOfDay!=null){
                        setState(() {
                          selectedTime=timeOfDay;
                        });
                      }

                    },
                    child: Text("Choose Time"),),
                ],

              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ),
    );
  }
}
