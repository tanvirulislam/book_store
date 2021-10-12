import 'package:book_app/screens/home_screen.dart';
import 'package:book_app/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Registration()));
}

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ragistration'),
      ),
      body: SingleChildScrollView(
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
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
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
                  child: Text('submit'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Already registered than go for Sign in',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text('SignIn'),
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
