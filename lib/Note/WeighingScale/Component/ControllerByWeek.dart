import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControllerByWeek extends StatefulWidget {
  const ControllerByWeek({super.key});

  @override
  State<ControllerByWeek> createState() => _ControllerByWeekState();
}

class _ControllerByWeekState extends State<ControllerByWeek> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(


        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15,),
              ),
              Column(
                children: [
                  Text('15 долоо хоног',style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                  Text('2 сарын 27 - 3 сарын 03'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15),
              ),

            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
      ),
    );
  }
}
