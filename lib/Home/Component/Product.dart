import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final PageController _controller = PageController(viewportFraction: 0.8, initialPage: 1 );

  List<String> lstString = [
    '1. Бүтээгдэхүүний нэр..',
    '2. Бүтээгдэхүүний нэр..',
    '3. Бүтээгдэхүүний нэр..',
    '4. Бүтээгдэхүүний нэр..',
    '5. Бүтээгдэхүүний нэр..',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Бүтгээдэхүүн',style: TextStyle(color: Colors.black, fontSize: 18  ),),
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
          Row(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Cанал болгох', style: TextStyle(color: Colors.white, fontSize: 10)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0Xff3D5CFF ),),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                            /* side: BorderSide(color: Colors.red)*/
                          )
                      )
                  )

              ),SizedBox(width: 10,),
              ElevatedButton(onPressed: (){}, child: Text('Best seller', style: TextStyle(color: Colors.black, fontSize: 10),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Colors.white  ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                            /* side: BorderSide(color: Colors.red)*/
                          )
                      )
                  )

              ),SizedBox(width: 10,),
              ElevatedButton(onPressed: (){}, child: Text('Хямдралтай', style: TextStyle(color: Colors.black, fontSize: 10)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Colors.white  ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                            /* side: BorderSide(color: Colors.red)*/
                          )
                      )
                  )

              ),

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
