// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_provider/core/export/export.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcontentColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12),
                  Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.height * 0.18,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children:
                              List.generate(product.colors.length, (index) {
                            return Container(
                              width: 14,
                              height: 14,
                              margin: EdgeInsets.only(left: 4),
                              decoration: BoxDecoration(
                                color: product.colors[index],
                                shape: BoxShape.circle,
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(product);
                  },
                  child: Icon(
                    provider.isExist(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
