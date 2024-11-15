import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Component/CustomPlayer.dart';
import 'package:untitled1/Home/HomeRoute.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YagoState();
}

class _YagoState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffF4F4F4),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Жирэмсний Иога', style: TextStyle(  fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff1F1F39)),),
                      SizedBox(height: 5,),
                      Text('31 долоо хоног', style: TextStyle(color: Color(0xff858597), fontSize: 12),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Customplayer(videoId: "9BkwdW7hfcU"),
              SizedBox(height: 10,),
              Text('Жирэмсний Иога: Эхний бла бла ...'),
              SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffF4F4F4),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('15 долоо'),
                            Text('хоног'),

                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffF4F4F4),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('16 долоо'),
                            Text('хоног'),

                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffF4F4F4),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('17 долоо'),
                            Text('хоног'),

                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffF4F4F4),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('18 долоо'),
                            Text('хоног'),

                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffF4F4F4),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('19 долоо'),
                            Text('хоног'),

                          ],
                        )
                      ],
                    ),
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
