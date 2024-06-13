import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/src/material/carousel.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List Wallpaperimage = [
    "images/wall1.jpg",
    "images/wall2.jpeg",
    "images/wall3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 60.0, left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(60),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.asset("images/boy.jpg",
                            height: 50, width: 50, fit: BoxFit.cover))),
                const SizedBox(width: 80.0),
                Text(
                  "WallWonders",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
            CarouselSlider.builder(
                itemCount: Wallpaperimage.length,
                itemBuilder: (context, index, realIndex) {
                  final res = Wallpaperimage[index];
                  return buildImage(res, index);
                },
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.5,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height))
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width / 1.5,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              urlImage,
              fit: BoxFit.cover,
            )),
      );
}
