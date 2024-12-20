import 'package:e_commerce_provider/core/export/export.dart';

class DetailImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  final int itemCount;
  const DetailImageSlider(
      {super.key,
      required this.onChange,
      required this.image,
      required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: PageView.builder(
        itemCount: itemCount,
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: image,
            child: Image.asset(image),
          );
        },
      ),
    );
  }
}
