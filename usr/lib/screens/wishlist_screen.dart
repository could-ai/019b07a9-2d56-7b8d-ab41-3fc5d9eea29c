import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wishlist_provider.dart';
import '../models/product.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        actions: [
          if (wishlistProvider.items.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                wishlistProvider.clear();
              },
            ),
        ],
      ),
      body: wishlistProvider.items.isEmpty
          ? const Center(
              child: Text('Your wishlist is empty'),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: wishlistProvider.items.length,
              itemBuilder: (context, index) {
                final product = wishlistProvider.items[index];
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
                            IconButton(
                              icon: const Icon(Icons.favorite, color: Colors.red),
                              onPressed: () {
                                wishlistProvider.removeItem(product);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}