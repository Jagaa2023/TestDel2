import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcalendar extends StatefulWidget {
  const Customcalendar({super.key});

  @override
  State<Customcalendar> createState() => _CustomcalendarState();
}

class _CustomcalendarState extends State<Customcalendar> {
  @override
  Widget build(BuildContext context) {
    return

      Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                (!false)?  Text('Ня', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                          children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('12', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                (!false)?  Text('Да', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('13', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                (!false)?  Text('Мя', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('16', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(

              children: [
                (!true)?  Text('Лх', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  backgroundColor: Colors.black,
                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11,  color: Colors.white),),
                ),
                SizedBox(height: 0,),
                Container(

                  width: 30,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('15', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child:  Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(text: '+10.1\n', style: TextStyle(fontSize: 8, color: Colors.blue.shade900)),
                              TextSpan(text: 'см', style: TextStyle(fontSize: 8, color: Colors.blue.shade900)),

                            ]
                          )
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                (!false)?  Text('Пү', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('16', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                (!false)?  Text('Ба', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('17', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                (!false)?  Text('Бя', style: TextStyle(fontSize: 11),):  CircleAvatar(

                  radius: 10,
                  child: Text('Ня', style: TextStyle(fontSize: 11),),
                ),
                SizedBox(height: 10,),
                Container(

                  width: 30,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text('18', style: TextStyle(fontSize: 12, color: Colors.black),),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 3,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      );
  }
}
