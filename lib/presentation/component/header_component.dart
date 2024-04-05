import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Image.asset('assets/images/head_image.jpeg'),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('5',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          Icon(Icons.star, color: Colors.grey, size: 16,),
                          Text('until Green Level', style: TextStyle(color: Colors.grey, fontSize: 16))
                        ],
                      ),
                      SizedBox(height: 4),
                      Container(
                        height: 7,
                        decoration: BoxDecoration(
                            color: Color(0xffececed),
                            borderRadius: BorderRadius.circular(8)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('0', style: TextStyle(
                        fontSize: 34, fontWeight: FontWeight.w400
                    )),
                    Padding(
                      padding: EdgeInsets.only(top: 4, left: 3),
                      child: Text('/', style: TextStyle(
                          fontSize: 24, color: Colors.grey, fontWeight: FontWeight.w100
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text('5', style: TextStyle(
                          fontSize: 24, color: Colors.grey, fontWeight: FontWeight.w400
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Icon(Icons.star, color: Colors.grey, size: 17),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
