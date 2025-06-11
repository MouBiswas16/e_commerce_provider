// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_provider/core/export/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<ProductModel>> selectedCategories = [
      all,
      shoes,
      beauty,
      womenFashion,
      jewelry,
      menFashion,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 38, bottom: 18, right: 8, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              SizedBox(height: 8),
              CustomSearchBar(),
              SizedBox(height: 12),
              ImageSlider(
                currentSlider: currentSlider,
                onChanged: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              SizedBox(height: 12),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: selectedIndex == index
                              ? kcontentColor
                              : Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(categories[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Flexible(
                              child: Text(
                                categories[index].title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.69,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 12,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: selectedCategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCard(
                      product: selectedCategories[selectedIndex][index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
