// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_provider/core/export/export.dart';
import 'package:e_commerce_provider/features/screens/Details/widget/detail_add_to_cart.dart';
import 'package:e_commerce_provider/features/screens/Details/widget/detail_description.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: DetailAddToCart(product: widget.product),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: SafeArea(
        child: Column(
          children: [
            DetailAppBar(),
            DetailImageSlider(
              itemCount: widget.product.colors.length,
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.product.colors.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 8,
                  width: currentImage == index ? 15 : 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Container(
              // height: MediaQuery.of(context).size.height * 0.50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              padding:
                  EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 98),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemDetail(product: widget.product),
                  SizedBox(height: 18),
                  Text(
                    "Colors",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor == index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 300),
                          height: currentColor == index ? 28 : 25,
                          width: currentColor == index ? 28 : 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.product.colors[index],
                          ),
                          padding: EdgeInsets.only(right: 2),
                          margin: EdgeInsets.only(right: 8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  DetailDescription(description: widget.product.description),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
