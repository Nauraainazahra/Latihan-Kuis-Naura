import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String productName;
  final String productImage = 'assets/images/gambar1.jpg'; 
  final String productDescription = 'Sofa ini dirancang dengan bahan berkualitas tinggi untuk memberikan kenyamanan maksimal, sempurna untuk bersantai setelah seharian beraktivitas..';
  final String productPrice = '\Rp.15.000.000.00'; 

  DetailPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Center(
              child: Image.asset(
                productImage,
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 20),
          
            Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            
            Text(
              productDescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            
            Row(
              children: List.generate(5, (index) {
                return Icon(Icons.star, color: Colors.yellow);
              }),
            ),
            SizedBox(height: 10),
           
            Text(
              'Price: $productPrice',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
           
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(content: Text('Pembelian Berhasil!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blueAccent, width: 2),
                ),
              ),
              child: Text('Buy'),
            ),
          ],
        ),
      ),
    );
  }
}
