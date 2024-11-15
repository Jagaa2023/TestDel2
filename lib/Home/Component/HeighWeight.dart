import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeighWeight extends StatefulWidget {
  const HeighWeight({super.key});

  @override
  State<HeighWeight> createState() => _HeighWeightState();
}

class _HeighWeightState extends State<HeighWeight> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
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


        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,


              backgroundColor: Color(0Xff957373 ),
              ),

              SizedBox(width: 10,),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Жин' , style: TextStyle(fontSize: 11, color: Colors.black ),),
                Text('295гр', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
              ],)
            ],
          ),
        ),
      ],
    );
  }
}
