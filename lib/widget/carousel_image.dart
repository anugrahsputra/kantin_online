import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kantin_online/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int activeIndex = 0;
  final List<String> imgList = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 1,
            aspectRatio: 2.2,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: imgList.length,
          itemBuilder: (context, i, realIndex) {
            final imageList = imgList[i];
            return buildImage(imageList, i);
          },
        ),
        buildIndicator()
      ],
    );
  }

  Widget buildImage(String imageList, int i) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultMargin2,
        left: defaultMargin2,
        right: defaultMargin2,
        bottom: 8,
      ),
      child: Image.asset(
        imageList,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imgList.length,
      effect: const WormEffect(
        spacing: 5.0,
        radius: 5.0,
        dotWidth: 6,
        dotHeight: 6,
        dotColor: Color(0xffC4C4C4),
        activeDotColor: Color(0xff9DB0FF),
      ),
    );
  }
}
