import 'package:saranchitfund/Goldpage.dart';
import 'package:saranchitfund/platpage.dart';
import 'package:saranchitfund/whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Uri dialnumber = Uri(scheme: 'tel', path: '7867014908');

  callnumber() async {
    await launchUrl(dialnumber);
  }

  Uri dialnumber1 = Uri(scheme: 'tel', path: '8489939931');

  callnumber1() async {
    await launchUrl(dialnumber1);
  }

  Uri dialnumber2 = Uri(scheme: 'tel', path: '7094458999');

  callnumber2() async {
    await launchUrl(dialnumber2);
  }

  Uri dialnumber3 = Uri(scheme: 'tel', path: '7867014294');

  callnumber3() async {
    await launchUrl(dialnumber3);
  }

  Uri dialnumber4 = Uri(scheme: 'tel', path: '7867014293');

  callnumber4() async {
    await launchUrl(dialnumber4);
  }

  Uri dialnumber5 = Uri(scheme: 'tel', path: '7867014595');

  callnumber5() async {
    await launchUrl(dialnumber5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/chitprofile1.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    // barrierColor: Colors.greenAccent,
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                // width: double.infinity,
                                width: 80,
                                height: 80,
                                child: Image.asset('assets/S_image.jpg'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'New Scheme Started on January',
                                style: TextStyle(fontSize: 18.0),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                '2024',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Goldpage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        // padding: const EdgeInsets.fromLTRB(
                                        //     50, 15, 50, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 216, 73, 193),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                // Image.asset('assets/one.jpg'),
                child: Image.asset(
                  'assets/Goldpage.jpg',
                  height: 110,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Platinum
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    // barrierColor: Colors.greenAccent,
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              SizedBox(
                                // width: double.infinity,
                                width: 80,
                                height: 80,
                                child: Image.asset('assets/S_image.jpg'),
                              ),
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "This Scheme is only available till December 2023.If you are already existing in this scheme you can continue.",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ), 
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PlatPage(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        // padding: const EdgeInsets.fromLTRB(
                                        // 50, 15, 50, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 15.0),
                                      ),
                                      child: const Text(
                                        'YES',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 216, 73, 193),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.asset(
                  'assets/platpage.jpg',
                  height: 110,
                  width: 270,
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:

      // bottomSheet: Text('Toll Free : 1800 425 1432'),
      bottomSheet: BottomAppBar(
        shadowColor: Colors.white,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/web.jpg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchWEURL,
            ),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/insta.jpg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchINURL,
            ),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/facebook.jpg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchFAURL,
            ),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/youtube.jpg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: _launchYOURL,
            ),
            GestureDetector(
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/white.jpg"), fit: BoxFit.cover),
                  // button text
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/phone.jpg"),
                       fit: BoxFit.cover),
                    
                  // button text
                ),
              ),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Contact Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Press on the number to direct Call',
                              style: TextStyle(fontSize: 12.8),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Trichy',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber,
                                          child: const Text(
                                            '7867014908',
                                          ),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Karaikudi',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber1,
                                          child: const Text('7094458999'),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Dindukkal',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber2,
                                          child: const Text('7867014294'),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'karur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber3,
                                          child: const Text('7867014293'),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Thanjavur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber4,
                                          child: const Text('7867014595'),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'vaiyampatty',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: callnumber5,
                                          child: const Text('8489939931'),
                                        ),
                                        const Icon(
                                          Icons.vibration,
                                          color:
                                              Color.fromARGB(255, 47, 229, 126),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Toll Free No : 1800 425 1432',
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // PhoneNumber('+917845652707'),

                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        // padding: const EdgeInsets.fromLTRB(
                                        //     30, 15, 30, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text('Cancel'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 37,
                  height: 37,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/whatsapp.jpg"),
                        fit: BoxFit.cover),
                    // button text
                  )),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            // SizedBox(
                            //   // width: double.infinity,
                            //   width: 50,
                            //   height: 50,
                            //   child: Image.asset('assets/S_image.jpg'),
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Whatsapp Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Touch the number to direct whatsapp',
                              style: TextStyle(fontSize: 12.1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Trichy',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                          
                                    ),
                                    
                                    Whatsapp('+917904042744'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'vaiyampatty',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Whatsapp('+918489939939'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'karaikudi',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Whatsapp('+917094949442'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Dindukkal',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Whatsapp('+919159449447'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Karur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Whatsapp('+918489948003'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Thanjavur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Whatsapp('+917094949455'),
                                  ],
                                ),
                              ],
                            ),

                            // Whatsapp('7845652707'),

                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: TextButton.styleFrom(
                                        // padding: const EdgeInsets.fromLTRB(
                                        //     30, 15, 30, 15),
                                        textStyle:
                                            const TextStyle(fontSize: 14.0),
                                      ),
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(color: Color.fromARGB(255, 69, 4, 232)),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/location.jpg"),
                        fit: BoxFit.cover),
                    // button text
                  )),
              onTap: () {
                showDialog(
                  // barrierColor: Colors.greenAccent,
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                              // width: double.infinity,
                              // width: 50,
                              // height: 50,
                              // child: Image.asset('assets/S_image.jpg'),
                            ),
                            const Text(
                              'Location Details',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Press on the location and get the direction in Map',
                              style: TextStyle(fontSize: 12.1),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Trichy',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                  'Anna stadium, Trichy'),
                                          child: const Text(
                                            'Anna stadium',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'vaiyampatty',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                  'Quantum solar energy, Vaiyampatty'),
                                          child: const Text(
                                            'Quantum solar energy',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'karaikudi',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                  'Subramaniapuram, Karaikudi'),
                                          child: const Text(
                                            'Subramaniapuram',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Dindukkal',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                'Nagal Nagar,Dindukkal'),
                                          child: const Text(
                                            'Nagal Nagar',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'karur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                  'Ashok Nagar,Karur'),
                                          child: const Text(
                                            'Ashok Nagar',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Thanjavur',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () =>
                                              MapsLauncher.launchQuery(
                                                  'Annai Sathya Stadium, Thanjavur'),
                                          child: const Text(
                                            'Annai Sathya stadium',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 229, 87, 113),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Color.fromARGB(255, 229, 87, 113),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // LocationWidget(
                            // '1600 Amphitheatre Parkway, Mountain View, CA'),

                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: TextButton.styleFrom(
                                      // padding: const EdgeInsets.fromLTRB(
                                      // 30, 15, 30, 15),
                                      textStyle:
                                          const TextStyle(fontSize: 14.0),
                                    ),
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Colors.orange,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                // padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                // color: Colors.white,
                height: 30,
                child: Text(
                  'Toll Free : 1800 425 1432  ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 32, 32),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchWEURL() async {
  Uri _url = Uri.parse('https://www.jayanathanchits.com/');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchINURL() async {
  Uri _url = Uri.parse(
      'https://instagram.com/sreejayanathanchits?igshid=MWZjMTM2ODFkZg==');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchFAURL() async {
  Uri _url = Uri.parse('https://m.facebook.com/SjChits');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

_launchYOURL() async {
  Uri _url = Uri.parse(
      'https://youtube.com/@sreejayanathanchits6684?si=R6RLsoKlhSYesqQa');
  if (await launchUrl(_url)) {
    // await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}
