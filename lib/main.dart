import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ProductDetailsPage(),
      theme:ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 197, 223),
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: Color.fromARGB(255, 120, 167, 231),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'DESIGN HOODIE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Image.network(
              'https://files.cdn.printful.com/o/upload/bfl-image/37/7994_l_Joke-Not-a-good-sign_29_11zon.jpg',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            const Text(
              'Product Price: \৳600',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 16),
            const Text(
              'Specifications:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'GSM:350',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Fabric:Cotton',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'High Premium Quality',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Premium Brush Layer Inside',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuyNowPage()),
                );
              },
              child: const Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNowPage extends StatelessWidget {
  const BuyNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( );
  }
}


