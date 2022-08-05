import 'dart:html';
import 'Welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormValidationExample(),
  ));
}

class FormValidationExample extends StatefulWidget {
  @override
  State<FormValidationExample> createState() => _FormValidationExampleState();
}

class _FormValidationExampleState extends State<FormValidationExample> {
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registration Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formGlobalKey,
            child: Column(children: [
              const SizedBox(height: 100),
              TextFormField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                maxLength: 8,
                obscureText: true,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Welcome_Page(user: user.text)));
                  },
                  child: Text("Submit"))
            ]),
          ),
        ));
  }
}