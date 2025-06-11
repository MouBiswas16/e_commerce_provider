import 'package:e_commerce_provider/core/export/export.dart';

class ProductDetailsItem extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final Color titleColor;

  const ProductDetailsItem({
    super.key,
    required this.description,
    required this.title,
    required this.color,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: double.infinity,
        height: 38,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: titleColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );

    // Container(
    //   width: MediaQuery.of(context).size.width * 0.34,
    //   height: 38,
    //   decoration: BoxDecoration(
    //     color: kcontentColor,
    //     borderRadius: BorderRadius.circular(18),
    //   ),
    //   alignment: Alignment.center,
    //   child: Padding(
    //       padding: const EdgeInsets.only(right: 8, left: 8),
    //       child: Text(
    //         "Specifications",
    //         style: TextStyle(
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black,
    //           fontSize: 16,
    //         ),
    //       )),
    // );
    // SizedBox(width: 18);
    // Container(
    //   width: MediaQuery.of(context).size.width * 0.34,
    //   height: 38,
    //   decoration: BoxDecoration(
    //     color: kcontentColor,
    //     borderRadius: BorderRadius.circular(18),
    //   ),
    //   alignment: Alignment.center,
    //   child: Padding(
    //       padding: const EdgeInsets.only(right: 8, left: 8),
    //       child: Text(
    //         "Reviews",
    //         style: TextStyle(
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black,
    //           fontSize: 16,
    //         ),
    //       )),
    // );

    // SizedBox(height: 18);
    // Text(
    //   description,
    //   style: TextStyle(
    //     fontSize: 16,
    //     color: Colors.grey,
    //   ),
    // );
  }
}
