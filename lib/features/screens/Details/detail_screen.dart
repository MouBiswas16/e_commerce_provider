import 'package:e_commerce_provider/core/export/export.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  int currentImage = 0;
  int currentColor = 0;
  int tabIndex = 0;
  // TabController? _tabController;

  // @override
  // void initState() {
  //   _tabController = TabController(length: 3, vsync: this);
  //   _tabController!.addListener(() {
  //     setState(() {
  //       tabIndex = _tabController!.index;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: DetailAddToCart(product: widget.product),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Column(
                // spacing: 8,
                children: [
                  DetailAppBar(product: widget.product),
                  Expanded(
                    child: DetailImageSlider(
                      itemCount: widget.product.colors.length,
                      image: widget.product.image,
                      onChange: (index) {
                        setState(() {
                          currentImage = index;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 18),
                    child: Row(
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
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(38),
                  topLeft: Radius.circular(38),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
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
                          child: Container(
                            padding: EdgeInsets.only(right: 8),
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.product.colors[index]),
                            height: currentColor == index ? 32 : 22,
                            width: currentColor == index ? 32 : 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // DefaultTabController(
                    //   initialIndex: 0,
                    //   length: 3,
                    //   child: TabBar(
                    // onTap: (index) {
                    // tabIndex = index;
                    // },
                    //     // controller: _tabController,
                    //     labelPadding: EdgeInsets.only(right: 8),
                    //     indicatorSize: TabBarIndicatorSize.tab,
                    //     dividerColor: Colors.transparent,
                    //     indicatorColor: Colors.transparent,
                    //     tabs: [
                    //       ProductDetailsItem(
                    //           color: kprimaryColor,
                    //           titleColor: Colors.white,
                    //           description: widget.product.description,
                    //           title: "Description"),
                    //       ProductDetailsItem(
                    //           color: kcontentColor,
                    //           titleColor: Colors.black,
                    //           description: widget.product.description,
                    //           title: "Specification"),
                    //       ProductDetailsItem(
                    //           titleColor: Colors.black,
                    //           color: kcontentColor,
                    //           description: widget.product.description,
                    //           title: "Reviews"),
                    //     ],
                    //   ),
                    // ),
                    // TabBarView(
                    //   // controller: _tabController,
                    //   children: [
                    //     SizedBox(
                    //       child: Text(
                    //         widget.product.description,
                    //         textAlign: TextAlign.left,
                    //         textDirection: TextDirection.ltr,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       child: Text(
                    //         widget.product.description,
                    //         textAlign: TextAlign.left,
                    //         textDirection: TextDirection.ltr,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       child: Text(
                    //         widget.product.description,
                    //         textAlign: TextAlign.left,
                    //         textDirection: TextDirection.ltr,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // DetailDescription(description: widget.product.description),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
