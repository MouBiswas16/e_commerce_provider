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

final List<ProductModel> all = [
  ProductModel(
    title: "Wireless Headphones",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
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
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
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
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
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
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
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
  ProductModel(
    title: "Watch",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/watch.png",
    review: "(100 reviews)",
    seller: "Jacket Store",
    price: 1000,
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "Men's Fashion",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Air Jordan",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/Air_Jordan.png",
    review: "(55 reviews)",
    seller: "The Seller",
    price: 255,
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Super Perfume",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/beauty/perfume.png",
    review: "(99 reviews)",
    seller: "Perfume Seller",
    price: 155,
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    rate: 4.7,
    quantity: 1,
  ),
  ProductModel(
    title: "Wedding Ring",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/jewelry/wedding_ring.png",
    review: "(80 reviews)",
    seller: "Ring Seller",
    price: 155,
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewellery",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Pants",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/women_fashion/pants.png",
    review: "(55 reviews)",
    seller: "PK Store",
    price: 155,
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Women's Fashion",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<ProductModel> shoes = [
  ProductModel(
    title: "Air Jordan",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/Air_Jordan.png",
    review: "(55 reviews)",
    seller: "The Seller",
    price: 255,
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Vans Old Skool",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/vans_old_skool.png",
    review: "(200 reviews)",
    seller: "Mrs Store",
    price: 300,
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Women-Shoes",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/women-shoes.png",
    review: "(100 reviews)",
    seller: "Shoes Store",
    price: 500,
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    category: "Shoes",
    rate: 4.8,
    quantity: 1,
  ),
  ProductModel(
    title: "Sports Shoes",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/sports_shoes.png",
    review: "(60 reviews)",
    seller: "Hri Store",
    price: 155,
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    rate: 3.0,
    quantity: 1,
  ),
  ProductModel(
    title: "White Sneaker",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/shoes/white_sneaker.png",
    review: "(00 reviews)",
    seller: "Shoe Store",
    price: 1000,
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    rate: 0.0,
    quantity: 1,
  ),
];

final List<ProductModel> beauty = [
  ProductModel(
    title: "Face Care Product",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/beauty/face_care.png",
    price: 1500,
    seller: "Yojana Seller",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.deepOrangeAccent,
    ],
    category: "Beauty",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Super Perfume",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
];

final List<ProductModel> womenFashion = [
  ProductModel(
    title: " Women Kurta",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/women_fashion/kurta.png",
    price: 299,
    seller: "Sila Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "WomenFashion",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Mens Jacket",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/women_fashion/lehenga.png",
    price: 666,
    seller: "My Store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "WomenFashion",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  ProductModel(
    title: "T-Shert",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/women_fashion/t-shert.png",
    price: 155,
    seller: "Love Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "  Pants",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/women_fashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<ProductModel> jewelry = [
  ProductModel(
    title: "Earrings",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/jewelry/earrings.png",
    price: 3000,
    seller: "Gold Store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Jewelry",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Jewelry-Box",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/jewelry/jewelry-box.png",
    price: 300,
    seller: "Love Love",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    category: "Jewelry",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Wedding Ring",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/jewelry/wedding_ring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Necklace-Jewellery",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/jewelry/necklace-jewellery.png",
    price: 5000,
    seller: "Jewellery Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Jewellery",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
  ),
];

final List<ProductModel> menFashion = [
  ProductModel(
    title: "Man Jacket",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/man_jacket.png",
    price: 500,
    seller: "Men Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category: "MenFashion",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Men Pants",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/pants.png",
    price: 400,
    seller: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "MenFashion",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Men Shert",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/shert.png",
    price: 300,
    seller: "Roman Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  ProductModel(
    title: "T-Shirt",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/t-shirt.png",
    price: 200,
    seller: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "MenFashion",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  ProductModel(
    title: "Watch",
    description:
        "The product is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    image: "assets/images/men_fashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
