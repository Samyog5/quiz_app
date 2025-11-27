import 'package:flutter/material.dart';

void main() {
  final pwdCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 245, 255),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.center,
            height: 750,
            width: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  controller: pwdCtrl,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 120),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                  child: Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
