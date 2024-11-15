import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../HomeRoute.dart';

class NewsToday extends StatefulWidget {
  const NewsToday({super.key});

  @override
  State<NewsToday> createState() => _NewsTodayState();
}

class _NewsTodayState extends State<NewsToday> {

  Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Carousel $carouselIndex'),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 200.0,
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }
  final PageController _controller = PageController(viewportFraction: 0.8, initialPage: 1 );


  List<String> lstString = [
    '1. Жирэмсний массаж хийлгүүлэх ямар ач..',
    '2. Ургийн хөжглийн талаар..',
    '3. Үр хөврөлийн бойжилт ба ...',
    '4. Ач холбогдол ба ..',
    '5. Хийлгүүлэх ямар ач..',
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(' Өнөөдрийн мэдээлэл',style: TextStyle(color: Colors.black, fontSize: 18  ),),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Text('Бүгдийг харах', style: TextStyle(color: Color(0xff858597) , fontSize: 14 ),),
                    Icon(Icons.arrow_forward_ios, color:  Color(0xff858597),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 200, // Card height
            child: PageView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: 5,
              controller: _controller,
              itemBuilder: (context, index) {
                return ListenableBuilder(
                  listenable: _controller,
                  builder: (context, child) {
                    double factor = 1;
                    if (_controller.position.hasContentDimensions) {
                      factor = 1 - (_controller.page! - index).abs();
                    }

                    return Center(
                      child: SizedBox(
                        height: 150 + (factor * 30),
                        child: Card(
                          elevation: 10,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 110 + (factor * 20),
                                    child: Placeholder()

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text.rich(
                                      TextSpan(
                                    text: lstString[index],
                                        style: TextStyle(fontSize: 10)
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
