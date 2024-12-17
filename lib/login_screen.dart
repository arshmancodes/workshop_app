import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                  ),
                  color: Colors.orange),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Welcome to the Application",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(usernameController.text);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blue,
                  ),
                  foregroundColor: WidgetStatePropertyAll(Colors.black)),
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
