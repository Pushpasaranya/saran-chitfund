import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Goldpage extends StatefulWidget {
  const Goldpage({super.key});

  @override
  State<Goldpage> createState() => _GoldpageState();
}

class _GoldpageState extends State<Goldpage> {
  List<String> detail = [
    'assets/one.jpg',
    'assets/second.jpg',
    'assets/third.jpg',
    'assets/fourth.jpg',
    'assets/fifth.jpg',
    'assets/sixth.jpg',
    'assets/seventh.jpg',
    'assets/eighth.jpg',
    'assets/nineth.jpg',
    'assets/tenth.jpg',
    'assets/eleventh.jpg',
  ];

  int myDetailCurrent = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 590,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      myDetailCurrent = value;
                    });
                  },
                  itemCount: detail.length,
                  itemBuilder: (context, index) {
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
              ),
            ),
            DotsIndicator(
              dotsCount: detail.length,
              position: myDetailCurrent.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                color: Colors.grey, // Inactive dot color
                activeColor: Color.fromARGB(255, 223, 14, 181), // Active dot color
                spacing: const EdgeInsets.all(3.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
