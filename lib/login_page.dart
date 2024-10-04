import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent, 
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Online Shop Furniture',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/logo.png', 
                height: 150,
              ),
            ),
            SizedBox(height: 20), 
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2), 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1), 
                ),
              ),
            ),
            SizedBox(height: 20), 
          
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black), 
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2), 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1), 
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20), 
           
            ElevatedButton(
              onPressed: () {
               
                if (usernameController.text == 'naura' && passwordController.text == '123') {
                 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Sukses login')),
                  );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(username: usernameController.text),
                    ),
                  );
                } else {
                 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Gagal login')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, 
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
