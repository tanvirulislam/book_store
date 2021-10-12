import 'package:book_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SignIn()));
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                    onChanged: (val) {}),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.password),
                      hintText: 'Enter a password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    onChanged: (val) {}),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
