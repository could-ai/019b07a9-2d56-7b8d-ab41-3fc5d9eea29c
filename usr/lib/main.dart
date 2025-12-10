import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'providers/wishlist_provider.dart';
import 'screens/home_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/wishlist_screen.dart';
import 'screens/seller_dashboard_screen.dart';

void main() {
  runApp(const EasyShopApp());
}

class EasyShopApp extends StatelessWidget {
  const EasyShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => WishlistProvider()),
      ],
      child: MaterialApp(
        title: 'EasyShop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/products': (context) => const ProductListScreen(),
          '/product-detail': (context) => const ProductDetailScreen(),
          '/cart': (context) => const CartScreen(),
          '/wishlist': (context) => const WishlistScreen(),
          '/seller-dashboard': (context) => const SellerDashboardScreen(),
        },
      ),
    );
  }
}