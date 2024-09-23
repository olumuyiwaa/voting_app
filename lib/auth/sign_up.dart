import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
    appBar: AppBar(
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromARGB(255, 17, 23, 40),
    ),
    body: ListView(        padding: const EdgeInsets.all(16),

      children: const[
         Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Image(
            fit: BoxFit.fitWidth, image: AssetImage('assets/login.webp')),
      ),
        Text('Sign Up Form', style: TextStyle(color: Colors.white, fontSize: 24),),
        SizedBox(height: 12,),
        TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                hintText: 'Firstname and Surname',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),SizedBox(height: 8,),
        TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Choose a Username',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),
        SizedBox(height: 8,),
        TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile Number',
                prefix: Text('+234'),
                hintText: '123456789',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),SizedBox(height: 8,),
        TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'username@server.com',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),
],
    ),);
  }
}
