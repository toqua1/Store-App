import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
   return AppBar(
     backgroundColor: Colors.white,
     title: Padding(
       padding: const EdgeInsets.symmetric(horizontal:  10),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text('Slash.' ,style:AppStyles.styleBold20),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/images/location.png'),
               const SizedBox(width: 5),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Nasr City',style: AppStyles.styleRegular14,),
                   Text('Cairo',style: AppStyles.styleBold14,)
                 ],
               ) ,
               const SizedBox(width: 7),
               Transform.rotate(
                   angle: -1.571,
                   child: const Icon(Icons.arrow_back_ios_new_outlined ,size:
                   20,)) ,
             ],
           ),
           Image.asset('assets/images/Notifcation_Icon.png'),
         ],
       ),
     ),
   );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
