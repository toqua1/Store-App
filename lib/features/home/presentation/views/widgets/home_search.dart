import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'filter_search_container.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: screenWidth > 800 ? 600 : double.infinity,
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  hintText: "Search here... ",
                  hintStyle: AppStyles.styleRegular14.copyWith(
                    color: const Color(0xff969696),
                  ),
                  prefixIcon: Image.asset('assets/images/search-normal.png'),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const FilterSearchContainer(),
        ],
      ),
    );
  }
}
