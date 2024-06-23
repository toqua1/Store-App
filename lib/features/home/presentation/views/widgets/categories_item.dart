import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.image, required this.title});
  
  final String image ;
  final String title; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Colors.black
            ),
            child: image=='assets/images/palette (2).png'?
            const Icon(Icons.palette, color: Colors.white,size: 35,)
                : Image.asset(image),
          ) ,
          const SizedBox(height: 5,),
          Text(title,style: AppStyles.styleRegular14,)
        ],
      ),
    );
  }
}
