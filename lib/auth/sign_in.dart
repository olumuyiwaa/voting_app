import 'package:flutter/material.dart';
import 'package:voting_app/components/button.dart';
import '../session.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 23, 40),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Image(
                fit: BoxFit.fitWidth, image: AssetImage('assets/login.webp')),
          ),
          const TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'username@server.com',
                  hintStyle: TextStyle(color: Colors.white54),
                  labelStyle: TextStyle(color: Colors.white))),
          const SizedBox(
            height: 12,
          ),
          const TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white))),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
              child: const Button(
                background: Colors.blue,
                icontextColor: Colors.white,
                text: 'Sign In',
                icon: Icons.door_front_door_rounded,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Session()));
              }),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Text(
                "Don't have an accout?",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Register',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
