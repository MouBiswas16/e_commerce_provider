import 'package:e_commerce_provider/core/export/export.dart';

class DetailAddToCart extends StatefulWidget {
  final ProductModel product;
  const DetailAddToCart({super.key, required this.product});

  @override
  State<DetailAddToCart> createState() => _DetailAddToCartState();
}

class _DetailAddToCartState extends State<DetailAddToCart> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(horizontal: 13),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    iconSize: 18,
                    color: Colors.white,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.006),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.006),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.007),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(48),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
