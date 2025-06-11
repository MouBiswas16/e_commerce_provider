// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_provider/core/export/export.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    HomeScreen(),
    Favorite(), 
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimaryColor,
        onPressed: () {},
        shape: CircleBorder(),
        child: IconButton(
            onPressed: () {
              setState(() {
                currentIndex = 2;
              });
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 32,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.09,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 28,
                color: currentIndex == 0 ? kprimaryColor : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 28,
                color: currentIndex == 1 ? kprimaryColor : Colors.grey,
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 28,
                color: currentIndex == 3 ? kprimaryColor : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 28,
                color: currentIndex == 4 ? kprimaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
