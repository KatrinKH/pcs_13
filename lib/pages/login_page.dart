import 'package:flutter/material.dart';
import 'package:pcs_13/components/my_button.dart';
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
      backgroundColor: const Color(0xFF67BEEA),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 50),

                // logo
                Icon(
                  Icons.message, 
                  size: 80,
                  color: Colors.grey[800],
                ),

                const SizedBox(height: 50),
            
                // welcome back message
                const Text(
                  "С возвращением, мы скучали по вам!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
            
                // email textfield
                MyTextField(
                  controller: emailController, 
                  hintText: 'Почта', 
                  obscureText: false,
                ),

                const SizedBox(height: 10),
            
                // password textfield
                MyTextField(
                  controller: passwordController, 
                  hintText: 'Пароль', 
                  obscureText: true,
                ),

                const SizedBox(height: 25),
            
                // sign in button
                MyButton(
                  onTap: () {}, 
                  text: 'Войти',
                ),
            
                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}