import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Home/HomeRoute.dart';

class Card11 extends StatefulWidget {
  const Card11({super.key});

  @override
  State<Card11> createState() => _Card11State();
}

class _Card11State extends State<Card11> {
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
                      Text('Танд зориулсан мэдээлэл', style: TextStyle(  fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff1F1F39)),),
                      SizedBox(height: 5,),
                      Text('Мэргэжлийн эмчийн зөвөлгөө', style: TextStyle(color: Color(0xff858597), fontSize: 12),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text.rich(
                  TextSpan(
                  text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley... ",
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeRoute())),
                          text: 'Дэлгэрэнгүй',
                          style: TextStyle(color: Color(0xff3D5CFF), fontWeight: FontWeight.bold))
                    ]


                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
