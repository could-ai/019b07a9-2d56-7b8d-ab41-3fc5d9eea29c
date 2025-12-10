import 'package:flutter/material.dart';

class SellerDashboardScreen extends StatelessWidget {
  const SellerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seller Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add New Product'),
            subtitle: const Text('Upload product images, prices, and details'),
            onTap: () {
              // Navigate to product upload screen
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Product upload not implemented yet')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Manage Listings'),
            subtitle: const Text('View and edit your products'),
            onTap: () {
              // Navigate to product management
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Product management not implemented yet')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Sales Analytics'),
            subtitle: const Text('Monitor your sales performance'),
            onTap: () {
              // Navigate to analytics
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Analytics not implemented yet')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Customer Messages'),
            subtitle: const Text('Communicate with your customers'),
            onTap: () {
              // Navigate to messages
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Messages not implemented yet')),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Quick add product
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Quick add product not implemented yet')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}