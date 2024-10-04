import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              'Username: $username',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, 
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL('https://www.instagram.com/nawra.yyy');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20), 
              ),
              child: Text('About App'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.redAccent, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20), 
              ),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
