import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final myitemsList = [
    Image.asset("assets/images/ic_slider.png", fit: BoxFit.fill),
    Image.asset("assets/images/ic_slider.png", fit: BoxFit.fill),
    Image.asset("assets/images/ic_slider.png", fit: BoxFit.fill),
    Image.asset("assets/images/ic_slider.png", fit: BoxFit.fill),
    Image.asset("assets/images/ic_slider.png", fit: BoxFit.fill),
  ];

  //final CarouselController carouselController = CarouselController();
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text("HOME"),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      backgroundColor: const Color(0xFFF2F7FA),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Book Tickets",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: .5, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Bus Tickets"),
                        Image(image: AssetImage("assets/images/ic_bus.png"))
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: .5, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Launch Tickets"),
                        Image(image: AssetImage("assets/images/ic_launch.png"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage("assets/images/ic_bus_pay.png"),
            height: 250,
            width: 400,
          ),
          Column(
            children: [
              CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 110,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 4),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                  ),
                  items: myitemsList),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: myitemsList.length,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5,
                    dotColor: Color(0xFFCED1D7),
                    activeDotColor: Color(0xFF17609A),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
