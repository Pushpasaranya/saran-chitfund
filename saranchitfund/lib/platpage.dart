import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PlatPage extends StatefulWidget {
  const PlatPage({super.key});

  @override
  State<PlatPage> createState() => _PlatPageState();
}

class _PlatPageState extends State<PlatPage> {
  List<String> detail = [
    'assets/plat1.jpg',
    'assets/plat2.jpg',
    'assets/plat3.jpg',
    'assets/plat4.jpg',
    'assets/plat5.jpg',
    'assets/plat6.jpg',
    'assets/plat7.jpg',
    'assets/plat8.jpg',
  ];

  int myDetailCurrent = 0;

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 9, 9),
      body: Column(
        children: [
          SizedBox(
            height: 20, // Adjust the spacing as needed
          ),
          CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount: detail.length,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  myDetailCurrent = index;
                });
              },
              height: 700, // Adjust the carousel height as needed
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onLongPress: () {
                      // Show the share option when the user long-presses the image
                      // showShareOption(context);
                      // _shareImage('assets/intro.png');
                    },
                    child: Image.asset(
                      detail[index],
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20, // Adjust the spacing as needed
          ),
          DotsIndicator(
            dotsCount: detail.length,
            position: myDetailCurrent.toDouble(),
            decorator: DotsDecorator(
              size: Size.square(9.0),
              activeSize: Size(18.0, 9.0),
              color: Colors.grey,
              activeColor:Colors.purple,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
