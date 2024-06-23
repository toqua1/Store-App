import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'build_image_slider.dart';


class DottedSlider extends StatelessWidget {
  const DottedSlider({
    super.key,
    required CarouselController controller,
    required int current,
  }) : _controller = controller, _current = current;

  final CarouselController _controller;
  final int _current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageSliders
          .asMap()
          .entries
          .map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: _current == entry.key ? 17.0 : 10.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              borderRadius: _current == entry.key ? BorderRadius.circular(8.0) : null,
              shape: _current == entry.key ? BoxShape.rectangle : BoxShape.circle,
              color: _current == entry.key ? Colors.black : Colors.grey
                  .withOpacity(0.5),
            ),
          ),
        );
      }).toList(),
    );
  }
}
