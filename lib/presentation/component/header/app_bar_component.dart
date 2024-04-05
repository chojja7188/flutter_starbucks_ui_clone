import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      toolbarHeight: 40,
      shadowColor: Colors.grey,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FaIcon(FontAwesomeIcons.envelope, size: 20,),
                  SizedBox(width: 8),
                  Text("What's New", style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    fontWeight: FontWeight.w300
                  )),
                  SizedBox(width: 20,),
                  Icon(Icons.receipt_long_outlined, size: 20,),
                  SizedBox(width: 8),
                  Text("Coupon", style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300
                  )),
                ],
              ),
              FaIcon(FontAwesomeIcons.bell, size: 20)
            ],
          ),
          titlePadding: EdgeInsetsDirectional.only(
              start: 20,
              end: 24,
              bottom: 8
          ),
          background: Column(
            children: [

            ],
          )
      ),
    );
  }
}
