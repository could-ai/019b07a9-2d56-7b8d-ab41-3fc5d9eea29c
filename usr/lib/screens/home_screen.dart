import 'package:flutter/material.dart';
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyShop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/products');
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Product.categories.length,
                itemBuilder: (context, index) {
                  final category = Product.categories[index];
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        category,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            // Featured Products
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Featured Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: Product.mockProducts.length,
              itemBuilder: (context, index) {
                final product = Product.mockProducts[index];
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey.shade200,
                          child: const Icon(Icons.image, size: 50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text('\$${product.price.toStringAsFixed(2)}'),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 16, color: Colors.amber),
                                Text('${product.rating} (${product.reviewCount})'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Seller'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              // Already on home
              break;
            case 1:
              Navigator.pushNamed(context, '/products');
              break;
            case 2:
              Navigator.pushNamed(context, '/seller-dashboard');
              break;
          }
        },
      ),
    );
  }
}