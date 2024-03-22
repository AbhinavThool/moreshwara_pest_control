import 'package:flutter/material.dart';

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

  bool isHomeHovered = false;
  bool isAboutHovered = false;
  bool isServicesHovered = false;
  bool isClientsHovered = false;
  bool isContactHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                            child: const Text("Home"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("About"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Services"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Clients"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Contact Us"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // More info

              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Heading
                        Text(
                          "Why Tej Pest Control Services?",
                          style: GoogleFonts.urbanist(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),

                        //Bullets
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Use of genuine ISO certified chemicals',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Government authorized company',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Fully trained staff with years of experience',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Use of all safety equipment’s',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Fast but optimum process',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              '100% Guaranteed service',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'No hidden costs',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Experience and expertise of 20 years',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'No need to vacate home',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Free inspection',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'Best pest control service in Pune',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.arrow_circle_right),
                            const SizedBox(width: 10),
                            Text(
                              'ISO certified company',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 500,
                      width: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.stockmediaserver.com/smsimg33/pv/IsignstockContributors/ISS_15344_217282.jpg?token=cfFsQHfwWJHYzpyB9G2L9_kz7d_ZIXl4IVUIN3ZWaGM&class=pv&smss=52&expires=4102358400",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Headings

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120.0,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Call Us for further details and get free inspection...",
                      style: GoogleFonts.urbanist(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Because you always need a Moreshwara Pest Control services",
                      style: GoogleFonts.urbanist(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Assurance of service beyond service.",
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              //banner

              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1628352081506-83c43123ed6d?q=80&w=1896&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    fit: BoxFit.fitWidth,
                    opacity: 0.2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/44/44386.png',
                          height: 150,
                          color: const Color.fromARGB(255, 204, 204, 204),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Earth Friendly",
                          style: GoogleFonts.urbanist(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 204, 204, 204),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn1.iconfinder.com/data/icons/insect-and-pest-control/500/Pest-insect-ban-control_9-512.png',
                          height: 150,
                          color: const Color.fromARGB(255, 204, 204, 204),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Targeted Prevention",
                          style: GoogleFonts.urbanist(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 204, 204, 204),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/161/161623.png',
                          height: 150,
                          color: const Color.fromARGB(255, 204, 204, 204),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Insured and Guaranteed",
                          style: GoogleFonts.urbanist(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 204, 204, 204),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}