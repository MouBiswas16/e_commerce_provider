// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChanged;
  final int currentSlider;
  const ImageSlider({
    super.key,
    required this.onChanged,
    required this.currentSlider,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChanged,
              physics: PageScrollPhysics(),
              children: [
                Image.asset(
                  "assets/images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/image1.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/slider3.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 8,
                  width: currentSlider == index ? 15 : 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlider == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
