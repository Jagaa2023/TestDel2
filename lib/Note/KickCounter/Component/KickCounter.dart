import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../Utilities/CustomColors.dart';

class Kickcounter extends StatefulWidget {
  const Kickcounter({super.key});

  @override
  State<Kickcounter> createState() => _KickcounterState();
}

class _KickcounterState extends State<Kickcounter> {

  double _volumeValue = 40;
  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(


        axes: <RadialAxis>[
          RadialAxis(
            annotations:  [

              GaugeAnnotation(
                  widget:  Container(
                    child: Column(


                      children: [
                        Text('5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 55, color: CustomColors.custClr_Blue)),

                        Text('өшиглөлт',
                            style: TextStyle(
                                color: CustomColors.custClr_Gray1, fontSize: 12 )),

                        SizedBox(height: 5,),
                        Text('00:00:30',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold )),

                      ],

                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  angle: 270,
                  positionFactor: 0.1
              )

            ],
            minimum: 0,
            maximum: 100,
            startAngle: 270,
            endAngle: 270,
            showLabels: false,
            showTicks: false,
            radiusFactor: 0.6,
            axisLineStyle: AxisLineStyle(
                cornerStyle: CornerStyle.bothCurve,
                color: Colors.black12,
                thickness: 12),
            pointers: <GaugePointer>[
              RangePointer(
                value: _volumeValue,
                cornerStyle: CornerStyle.bothFlat,
                width: 12,
                sizeUnit: GaugeSizeUnit.logicalPixel,
                color:  CustomColors.custClr_Blue,
              ),
              MarkerPointer(
                value: _volumeValue,
                enableDragging: true,
                onValueChanged: onVolumeChanged,
                markerHeight: 15,
                markerWidth: 15,
                markerType: MarkerType.circle,
                color: CustomColors.custClr_Blue,
                borderWidth: 2,
                borderColor: CustomColors.custClr_Blue,)
            ],
          )
        ]
    );
  }
}
