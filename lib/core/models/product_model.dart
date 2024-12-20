import 'package:e_commerce_provider/core/export/export.dart';

class ProductModel {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<ProductModel> products = [
  ProductModel(
    title: "Wireless Headphones",
    description:
        "Loren ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor i",
    image: "assets/images/all/wireless.png",
    review: "(320 reviews)",
    seller: "Mbib knxui",
    price: 120,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    rate: 4.8,
    quantity: 1,
  ),
  ProductModel(
    title: "Women Sweater",
    description:
        "Loren ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor i",
    image: "assets/images/all/sweet.png",
    review: "(32 reviews)",
    seller: "Joy Store",
    price: 120,
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Women Fashion",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Smart Watch",
    description:
        "Loren ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor i",
    image: "assets/images/all/miband.jpg",
    review: "(20 reviews)",
    seller: "Ram knxui",
    price: 55,
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    rate: 4.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Mens Jacket",
    description:
        "Loren ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor i",
    image: "assets/images/all/jacket.png",
    review: "(320 reviews)",
    seller: "Jackrt Store",
    price: 155,
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Men's Fashion",
    rate: 5.0,
    quantity: 1,
  ),
];
