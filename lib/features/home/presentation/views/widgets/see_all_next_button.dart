import 'package:flutter/material.dart';

class SeeAllNextButton extends StatelessWidget {
  const SeeAllNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[200] ,
      ),
      child: const Icon(Icons.arrow_forward_ios,size: 15,),
    );
  }
}
