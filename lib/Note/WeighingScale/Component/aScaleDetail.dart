import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Utilities/CustomColors.dart';

class aScaleDetail extends StatefulWidget {
  const aScaleDetail({super.key});

  @override
  State<aScaleDetail> createState() => _aScaleDetailState();
}

class _aScaleDetailState extends State<aScaleDetail> {
  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      
      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('8 д/хоног', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('05/31/2024', style: TextStyle(color: CustomColors.custClr_Gray1, fontSize: 12),),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('56.5 кг', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('50.3 - 60.3 кг', style: TextStyle(color: CustomColors.custClr_Gray1, fontSize: 12),),
              ],
            ),

            Icon(Icons.delete_forever_sharp, color: CustomColors.custClr_Blue, size: 24,)

          ],
        ),
      ),
      
      
      
      
    );
  }
}
