import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  final List<String> assets = [
    "assets/images/land-1.jpg",
    "assets/images/land-2.jpg",
    "assets/images/land-3.jpg",
  ];
  int carousalIndex = 0;
  CarouselController carouselController = CarouselController();

  shareBtnPress() {
    Share.share('check out my website https://example.com',
        subject: 'Look what I made!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Description"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0)),
                ),
                child: Column(
                  children: [
                    Stack(
                      fit: StackFit.passthrough,
                      children: [
                        CarouselSlider(
                          carouselController: carouselController,
                          options: CarouselOptions(
                            // height: 150.0,
                            aspectRatio: 1.4,
                            enlargeCenterPage: true,
                            pageSnapping: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                carousalIndex = index;
                              });
                            },
                          ),
                          items: List.generate(
                            assets.length,
                            (index) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      assets[index],
                                      // height: 100,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 10,
                          child: Align(
                            alignment: Alignment.center,
                            child: AnimatedSmoothIndicator(
                              activeIndex: carousalIndex,
                              count: assets.length,
                              effect: const WormEffect(),
                            ),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () => shareBtnPress(),
                        icon: const Icon(Icons.share)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
