import 'package:flutter/material.dart';

class FirstPromotionComponent extends StatelessWidget {
  const FirstPromotionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 28),
            child: Image.asset('assets/images/first_promotion_image.jpeg')
        )
    );
  }
}
