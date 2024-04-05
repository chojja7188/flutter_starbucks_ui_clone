import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  final bool visible;
  const HeaderComponent({Key? key, required this.visible}) : super(key: key);

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AnimatedOpacity(
        opacity: widget.visible ? 1 : 0,
        duration: Duration(seconds: 1),
        child: Column(
          children: [
            Image.asset('assets/images/head_image.jpeg'),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20, right: 20),
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
      ),
    );
  }
}
