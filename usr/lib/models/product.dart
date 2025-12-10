class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final String sellerId;
  final double rating;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.sellerId,
    required this.rating,
    required this.reviewCount,
  });

  // Mock data generator
  static List<Product> mockProducts = [
    Product(
      id: '1',
      name: 'Wireless Headphones',
      description: 'High-quality wireless headphones with noise cancellation.',
      price: 199.99,
      imageUrl: 'assets/images/headphones.jpg',
      category: 'Electronics',
      sellerId: 'seller1',
      rating: 4.5,
      reviewCount: 128,
    ),
    Product(
      id: '2',
      name: 'Smart Watch',
      description: 'Fitness tracking smartwatch with heart rate monitor.',
      price: 299.99,
      imageUrl: 'assets/images/smartwatch.jpg',
      category: 'Electronics',
      sellerId: 'seller2',
      rating: 4.2,
      reviewCount: 89,
    ),
    Product(
      id: '3',
      name: 'Running Shoes',
      description: 'Comfortable running shoes for all terrains.',
      price: 129.99,
      imageUrl: 'assets/images/shoes.jpg',
      category: 'Sports',
      sellerId: 'seller3',
      rating: 4.7,
      reviewCount: 256,
    ),
    Product(
      id: '4',
      name: 'Coffee Maker',
      description: 'Automatic coffee maker with programmable timer.',
      price: 79.99,
      imageUrl: 'assets/images/coffeemaker.jpg',
      category: 'Home',
      sellerId: 'seller4',
      rating: 4.3,
      reviewCount: 67,
    ),
  ];

  static List<String> categories = ['All', 'Electronics', 'Sports', 'Home', 'Fashion'];
}