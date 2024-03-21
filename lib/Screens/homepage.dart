import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> images = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=',
    'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
    'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white70,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Nav-Bar

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 180,
                      decoration: const BoxDecoration(
                        // color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/moreshwara_logo.png',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    SizedBox(
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black),
                            child: Text(
                              "Home",
                              style: GoogleFonts.urbanist(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black),
                            child: Text(
                              "About",
                              style: GoogleFonts.urbanist(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black),
                            child: Text(
                              "Services",
                              style: GoogleFonts.urbanist(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black),
                            child: Text(
                              "Clients",
                              style: GoogleFonts.urbanist(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black),
                            child: Text(
                              "Contact Us",
                              style: GoogleFonts.urbanist(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Banner Silder

              CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOutCirc,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.99,
                  initialPage: 0,
                ),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 50,
              ),

              // Intro

              Text(
                'Need Help With Moreshwara Enterprises?',
                style: GoogleFonts.urbanist(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We know how to protect your family, home and business!',
                style: GoogleFonts.urbanist(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
