import 'package:flutter/material.dart';

class FilterSearchContainer extends StatelessWidget {
  const FilterSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200] ,
      ),
      child: Image.asset('assets/images/filter.png'),
    );
  }
}