import 'package:flutter/material.dart';
import '../Auth/sign_in.dart';
import '../components/button.dart';
import '../session.dart';

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

      children: [
        const Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Image(height: 300,
            fit: BoxFit.fitHeight, image: AssetImage('assets/registrations.png')),
      ),
    const Text('Sign Up Form', style: TextStyle(color: Colors.white, fontSize: 24),),
    const   SizedBox(height: 12,),
    const   TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                hintText: 'Firstname and Surname',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),const SizedBox(height: 8,),
    const    TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Choose a Username',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),
    const   SizedBox(height: 8,),
    const   TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile Number',
                prefix: Text('+234'),
                hintText: '123456789',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),const SizedBox(height: 8,),
    const  TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'username@server.com',
                hintStyle: TextStyle(color: Colors.white54),
                labelStyle: TextStyle(color: Colors.white))),
    const   SizedBox(height: 8,),
    const   TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white))),
    const   SizedBox(height: 8,),
       const TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white))),
    const SizedBox(height: 40,),
    GestureDetector(
    child: const Button(
    background: Colors.blue,
    icontextColor: Colors.white,
    text: 'Sign Up',
    icon: Icons.app_registration,),
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (BuildContext context) => const Session()));
  }),
    const SizedBox(
    height: 12,
    ),
     Row(
    children: [
    const Text(
    "Do you have an account?",
    style: TextStyle(color: Colors.white),
    ),
    const SizedBox(
    width: 8,
    ),
      GestureDetector(
          child: const Text(
            'Sign In',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const SignIn()));
          }),

],
    ),const SizedBox(height: 40,)],));
  }
}
