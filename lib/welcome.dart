import 'package:flutter/material.dart';
import '../Auth/sign_in.dart';
import '../auth/sign_up.dart';
import '../components/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 23, 40),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Image(
                height: 520,
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/ballot.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const SignIn()));
                },
                child: const Button(
                  background: Colors.blue,
                  icontextColor: Colors.white,
                  text: 'Sign In To Ballot..',
                  icon: Icons.login,
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const SignUp()));
                },
                child: const Button(
                  background: Colors.white,
                  icontextColor: Colors.blue,
                  text: 'Register With Us',
                  icon: Icons.app_registration,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
