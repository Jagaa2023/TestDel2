import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:untitled1/Note/KickCounter/Component/KickCounter.dart';
import 'package:untitled1/Note/KickCounter/Component/aKickDetail.dart';

import '../../Utilities/CustomColors.dart';

class KickCountView extends StatefulWidget {
  KickCountView({super.key});

  @override
  State<KickCountView> createState() => _KickCountViewState();
}

class _KickCountViewState extends State<KickCountView> {


  List<aKickDetail> aKickDetails = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());
    aKickDetails.add( aKickDetail());


  }

  double _raduuus = 60;
  double _borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Өшиглөх тоолуур'),
      ),
      body: SingleChildScrollView(
        child: Container(
         //  color: CustomColors.custClr_Gray2,
          child:
          Column(
            children: [
                  Kickcounter(),
                  CircleAvatar(
                    backgroundColor: CustomColors.custClr_Blue,
                    radius: _raduuus,
                    child:   SizedBox(
                        width: _raduuus*2*0.80,
                        height:_raduuus*2*0.80,
                        child: Image.asset('images/footprint.png' ))
                  ),

                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),

                    ),
                    margin: EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
                               // border: Border( bottom: BorderSide(color: CustomColors.custClr_Gray1  ))
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Огноо'),
                                Text('Duration'),
                                Text('Хугацаа'),
                                Text('Тоо'),

                              ],
                            ),
                          ),


                        ),
                        Expanded(
                          child: ListView.builder(

                            shrinkWrap: true,
                            itemCount: aKickDetails.length,
                            itemBuilder: (BuildContext context, int index) {

                                return aKickDetails[index];

                          }, ),
                        ),
                      ],
                    ),
                  )

            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales, this.measurement);

  final int year;
  final double sales;
  final String measurement;
}
