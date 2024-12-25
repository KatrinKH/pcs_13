import 'package:flutter/material.dart';
import 'package:pcs_13/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // logo
              Icon(
                Icons.message, 
                size: 80,
                color: Colors.grey[800],
              ),
          
              // welcome back message
              const Text(
                "С возвращением, мы скучали по вам!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              // email textfield
              MyTextField(
                controller: emailController, 
                hintText: 'Почта', 
                obscureText: false,
              ),
          
              // password textfield
          
              // sign in button
          
              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}