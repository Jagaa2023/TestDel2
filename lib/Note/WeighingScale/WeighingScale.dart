import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Note/WeighingScale/Component/CustomChart.dart';

import '../../Utilities/CustomColors.dart';
import 'Component/ControllerByWeek.dart';
import 'Component/aScaleDetail.dart';

class WeighingScale extends StatefulWidget {
  const WeighingScale({super.key});

  @override
  State<WeighingScale> createState() => _WeighingScaleState();
}

class _WeighingScaleState extends State<WeighingScale> {

  bool isChartActiveted = true;

  List<aScaleDetail> lst_aScaleDetails = [];

  Expanded ScaleChart(){

    return Expanded(
       child: SingleChildScrollView(
          child: Container(

          margin: EdgeInsets.all(18),

          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Таны жин'),
              ),
              Text('56.5', style: TextStyle( fontSize: 40, color:  CustomColors.custClr_Blue, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Зөвлөмж жин:'),
                  SizedBox(width: 5,),
                  Icon(Icons.info_outline, color:  CustomColors.custClr_Blue )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('54.1 - 59.1 кг', style: TextStyle(  fontWeight: FontWeight.bold),),
              ),
              CustomChart(),
              ControllerByWeek()



            ],
          ),
              ),
        ),
     );
  }

  Expanded ScaleList(){

    return

      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 25),
                child: Row(
                  children: [
                  Text('Жингийн тооцоолуур', style: TextStyle(color: CustomColors.custClr_Blue, fontSize: 12),),
                  Icon(Icons.arrow_circle_right_outlined, color: CustomColors.custClr_Blue, size: 20,),
                ],),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: lst_aScaleDetails.length,
                  itemBuilder: (BuildContext context, int index) {
           
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: lst_aScaleDetails[index],
                  );
          
                }, ),
              )
            ],
          
              ),
        ),
      );

       
  }

  @override
  void initState() {
    // TODO: implement initState

    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());
    lst_aScaleDetails.add(aScaleDetail());

  }

  @override
  Widget build(BuildContext context) {
    double progressValue = 45;
    return  Scaffold(
      backgroundColor: Color(0xffF3F4F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

        actions: [ IconButton(
      icon: const Icon(Icons.add_circle, color: Color(0xff3D5CFF), size: 30,),
      tooltip: 'Comment Icon',
      onPressed: () {},
    ), //Ico],
],
        title: Text("Жин хэмжигч", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:   Column(
        children: [
          Container(

            margin: EdgeInsets.all(18),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Row(

                children: [
                  Flexible(

                    flex: 1,
                      fit: FlexFit.tight,
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(onPressed: (){

                        setState(() {

                          isChartActiveted = !isChartActiveted;
                        });

                      }, child: Text(
                      'Жингийн чарт',
                        style: TextStyle( color:   (isChartActiveted)? Colors.white : Colors.grey,),
                      ),

                          style: ButtonStyle(

                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  (isChartActiveted)?Color(0Xff3D5CFF ): Colors.white,
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    /* side: BorderSide(color: Colors.red)*/
                                  )
                              )
                          )

                      ),
                    )
                  ),
                  Flexible(

                      flex: 1,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(

                            onPressed: (){

                          setState(() {

                            isChartActiveted = !isChartActiveted;
                          });

                        }, child: Text(
                          'Жингийн жагсаалт',
                          style: TextStyle( color:   (isChartActiveted)?  Colors.grey: Colors.white),
                        ),

                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  (isChartActiveted)?Colors.white : Color(0Xff3D5CFF ) ,                            ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      /* side: BorderSide(color: Colors.red)*/
                                    )
                                )
                            )

                        ),
                      )
                  ),

                ],
              ),
            ),
          ),



          (isChartActiveted) ? ScaleChart() : ScaleList()
        ],
      )

    );
  }
}
