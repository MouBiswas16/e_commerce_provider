// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_provider/core/export/export.dart';

class DetailAppBar extends StatelessWidget {
  final ProductModel product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 18, left: 12, right: 12),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.only(right: 8, left: 18, top: 12, bottom: 12),
            ),
            // iconSize: 28,
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(12),
                ),
                // iconSize: 28,
                icon: Icon(Icons.share_outlined),
              ),
              SizedBox(width: 18),
              IconButton(
                onPressed: () {
                  provider.toggleFavorite(product);
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(12),
                ),
                // iconSize: 28,
                icon: Icon(
                  provider.isExist(product)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.black,
                  size: 23,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
