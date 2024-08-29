
import 'package:flutter/material.dart';

class form_sign_up extends StatefulWidget {
  const form_sign_up({super.key});

  @override
  State<form_sign_up> createState() => _Form_sign_UpState();
}

class _Form_sign_UpState extends State<form_sign_up> {
  final _formKey=GlobalKey<FormState>();
  final TextEditingController name=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  final TextEditingController confirmPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text("Forms"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey ,
              child:  Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                    border: OutlineInputBorder(),
                    label: Text('Name'),
                  ),
                  validator: (value){
                    if(value== null || value.isEmpty){
                      return "Name can't be empty";
                    }
                    // else if( !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //     .hasMatch(value)){
                    //   return "Enter a valid email";
                    // }
                  },
                ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      border: OutlineInputBorder(),
                      label: Text('email'),
                    ),
                    validator: (value){
                      if(value== null || value.isEmpty){
                        return "email can't be empty";
                      }
                      else if( !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)){
                        return "Enter a valid email";
                      }
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    controller: password,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                    ),
                    validator: (value){
                      if(value!.length<8){
                        return "Password must be at least 8 character long";
                      }
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    controller: confirmPassword,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      border: OutlineInputBorder(),
                      label: Text('Confirm Password'),
                    ),
                    validator: (value){
                      if(value!=password.text){
                        return "Confirmed password don't match";
                      }
                    },
                  ),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print("data submitted");
                    }
                  }, child: const Text("Sign Up"),),
                ],

              ),
          ),
        ),
      ),
    );
  }
}
