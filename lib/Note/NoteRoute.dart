import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Home/Component/HeighWeight.dart';
import 'package:untitled1/Note/KickCounter/KickCountView.dart';

import 'WeighingScale/WeighingScale.dart';

class NoteRoute extends StatefulWidget {
  const NoteRoute({super.key});

  @override
  State<NoteRoute> createState() => _NoteRouteState();
}

class _NoteRouteState extends State<NoteRoute> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xff3D5CFF),

            child:  SafeArea(
              child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar( backgroundColor: Colors.white,),
                
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Өдрийн мэнд',style: TextStyle(fontSize: 12, color: Colors.white), ),
                              Text('Ууганбаяр', style: TextStyle(fontSize: 18, color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon( Icons.add_alert, color: Colors.white,)
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                color: Color(0xff3D5CFF),
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Анхны жин'),
                            Icon(Icons.edit, color: Colors.green, size: 20,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 10, left: 5, top:  5, bottom: 5),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XffC6A1A1 ),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Жин' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                                        Text('53.6kг', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                                      ],)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 10, left: 5, top:  5, bottom: 5),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XffC6A1A1 ),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Өндөр' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                                        Text('31.3см', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                                      ],)
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),

                  ),
                ),
              ),

            ],
          ),
          Expanded(
            child: SingleChildScrollView(

              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Жирэмсний Тэмдэглэл'),
                            SizedBox(height: 10,),
                            Row(
            
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffAFBAE7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: InkWell(
                                            onTap: (){

                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const WeighingScale()),
                                              );

                                            },
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text('Жин хэмжигч' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                                      ],
                                    ),
                                  ),
                                ),
            
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                        ),
                                        SizedBox(height: 5,),
                                        Text('Өшиглөх тоолуур' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
            
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                        ),
                                        SizedBox(height: 5,),
                                        Text('Сэтгэлийн'   ),
                                      ],
                                    ),
                                  ),
                                ),
            
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      children: [

                                        CircleAvatar(

                                          radius: 40,
                                          backgroundColor: Colors.white,
                                            child: InkWell(
                                              onTap: (){

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>   KickCountView()),
                                                );

                                              },
                                            )

                                        ),
                                        SizedBox(height: 5,),
                                        Text('Витамин' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
            
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
    ],
      ),
    );
  }
}
