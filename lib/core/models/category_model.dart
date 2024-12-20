class CategoryModel {
  final String title;
  final String image;

  CategoryModel({required this.title, required this.image});
}

final List<CategoryModel> categories = [
  CategoryModel(
    title: "Shoes",
    image: "assets/images/shoes.png",
  ),
  CategoryModel(
    title: "Beauty",
    image: "assets/images/beauty.png",
  ),
  CategoryModel(
    title: " Women's\n  Fashion",
    image: "assets/images/image1.png",
  ),
  CategoryModel(
    title: "Jewelry",
    image: "assets/images/jewelry.png",
  ),
  CategoryModel(
    title: '''   Men's\n Fashion''',
    image: "assets/images/men.png",
  ),
];
