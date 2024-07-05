import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'description_page.dart';

class MeetupPage extends StatefulWidget {
  const MeetupPage({super.key});

  @override
  State<MeetupPage> createState() => _MeetupPageState();
}

class _MeetupPageState extends State<MeetupPage> {
  final List<String> assets = [
    "assets/images/land-1.jpg",
    "assets/images/land-2.jpg",
    "assets/images/land-3.jpg",
  ];
  int carousalIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            /// search bar
            SearchBar(
              leading: const Icon(Icons.search),
              controller: TextEditingController(),
              hintText: "Search",
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20.0)),
              trailing: [const Icon(Icons.mic)],
            ),
            const SizedBox(
              height: 50,
            ),

            /// cards
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 500.0,
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
                          return Column(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(assets[index])),
                                      const Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Text(
                                              'Popular Meetups in India',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                AnimatedSmoothIndicator(
                  activeIndex: carousalIndex,
                  count: assets.length,
                  effect: const WormEffect(),
                )
              ],
            ),

            /// trending popular people
            Column(
              children: [
                const Text(("Trending Popular People")),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Container(
                        width: 300,
                        // padding: EdgeInsets.all(10),
                        child: Card(
                          // margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// top row
                                const Row(
                                  children: [
                                    CircleAvatar(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Author"),
                                        Text("1,028 Meetups"),
                                      ],
                                    )
                                  ],
                                ),
                                const Divider(),

                                /// middle Cicles
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: const Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 0,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/images/land-1.jpg'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 25,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/images/land-2.jpg'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 50,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/images/land-3.jpg'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                /// bottom
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            const WidgetStatePropertyAll(
                                                Colors.teal),
                                        shape: WidgetStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12)))),
                                    onPressed: () {},
                                    child: const Text(
                                      "See More",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// Top Trending Meetups

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DescriptionPage(),
                            ));
                      },
                      child: Container(
                        height: 200,
                        width: 300,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.all(12),
                        color: Colors.red.withOpacity(0.5),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
