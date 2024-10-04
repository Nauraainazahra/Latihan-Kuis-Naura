import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent, 
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage(username: username)),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hallo $username!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset('assets/images/gambar1.jpg', width: 300, height: 150), 
                Image.asset('assets/images/gambar2.jpg', width: 300, height: 150), 
                Image.asset('assets/images/gambar3.jpg', width: 300, height: 150), 
              ],
            ),
          ),
         
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage(productName: 'Sofa Bagus')),
                    );
                  },
                  child: Card(
                    elevation: 4, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                      side: BorderSide(color: Colors.blueAccent, width: 2), 
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/gambar1.jpg',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sofa Bagus',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Harga: Rp. 15.000.000,00', 
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(productName: 'Sofa Bagus')),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent, 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), 
                            ),
                          ),
                          child: Text('Beli'), 
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
