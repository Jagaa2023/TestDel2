import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Component/CustomPlayer.dart';
import 'package:untitled1/Home/Component/Product.dart';

import 'Component/CustomCalendar.dart';
import '../Component/Card11.dart';
import 'Component/HeighWeight.dart';
import 'Component/NewsToday.dart';
import 'Component/Yoga.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {




  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(140.0), child: Container(

        color: Color(0xff3D5CFF),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

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
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10,),
                child: Container(

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white, size: 40,),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Text('31 долоо хоног 3 өдөр', style: TextStyle(fontSize: 18, color: Colors.white),),
                            Text('2 сарын 27  - 3 сарын 03', style: TextStyle(fontSize: 12, color: Colors.white),),
                            Text('Амаржихад 25 өдөр үлдсэн байна', style: TextStyle(fontSize: 12, color: Colors.white),),
                          ],
                        ),
                        SizedBox(width:10,),
                        Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white, size: 40,),

                      ],
                    ),
                  ),
                  //  height: 150,

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10.0), // Uniform radius
                  ),
                ),
              )
            ],
          ),
        ),
      )),
      body: Container(
        color: Color(0xffEFC6F5),

        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Customplayer(videoId: "zr048XhAc5U",),
                Customcalendar(),
                HeighWeight(),
                Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                  child: ElevatedButton(onPressed: (){}, child: Text('Дэлгэрэнгүй'),
                      style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Color(0Xff3D5CFF ),),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),

                                 /* side: BorderSide(color: Colors.red)*/
                              )
                          )
                      )

                  ),
                ),
                Card11(),
                NewsToday(),
                Yoga(),
                Product()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
