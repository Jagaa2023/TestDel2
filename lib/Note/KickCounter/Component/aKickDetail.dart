import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Utilities/CustomColors.dart';

class aKickDetail extends StatelessWidget {
  const aKickDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
       // borderRadius: BorderRadius.all(Radius.circular(4.0)),
        border: Border( bottom: BorderSide(color: CustomColors.custClr_Gray2  ))
      ),
      child: const Padding(
        padding: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('05/13/2024'),
            Text('01:20:05'),
            Text('10:28:14 - 11:48:24'),
            Text('7'),

          ],
        ),
      ),


    );
  }
}
