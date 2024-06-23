import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'build_image_slider.dart';
import 'dotted_slider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = screenWidth > 800 ? 4.0 : 3.0;
    return Column(
        children: [
      CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay:false,
              enlargeCenterPage: true,
              aspectRatio: aspectRatio,
              enableInfiniteScroll: false,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      DottedSlider(controller: _controller, current: _current),
    ]);
  }
}
