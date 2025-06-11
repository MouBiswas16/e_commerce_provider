// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_provider/core/export/export.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      backgroundColor: kcontentColor,
      body: Column(
        children: [
          SizedBox(height: 38),
          FavoriteAppBar(),
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                final favoriteItems = finalList[index];
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8, left: 8, bottom: 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.19,
                              width: MediaQuery.of(context).size.height * 0.19,
                              decoration: BoxDecoration(
                                color: kcontentColor,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Image.asset(favoriteItems.image),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  favoriteItems.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  favoriteItems.category,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "\$${favoriteItems.price}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 48,
                      right: 28,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                finalList.removeAt(index);
                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
