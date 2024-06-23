import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding:const EdgeInsets.symmetric(vertical: 15),
          hintText: "Search here... ",
          hintStyle: AppStyles.styleRegular14.copyWith(
            color:const Color(0xff969696),
          ),
          prefixIcon: Image.asset('assets/images/search-normal.png'),
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none ,
          ),
        ),
      );
  }
}
