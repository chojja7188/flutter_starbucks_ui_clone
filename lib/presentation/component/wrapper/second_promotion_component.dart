import 'package:flutter/material.dart';

class SecondPromotionComponent extends StatelessWidget {
  const SecondPromotionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(0, 4)
                  )
                ]
            ),
            child: Image.asset('assets/images/second_promotion_image.jpeg')
        ),
      ),
    );
  }
}
