import 'package:e_commerce_provider/core/export/export.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavBar(),
                ),
              );
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.only(right: 8, left: 18, top: 12, bottom: 12),
            ),
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          Text(
            "My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
