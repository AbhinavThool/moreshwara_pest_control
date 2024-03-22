import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moreshwara_pest_control/Screens/about_us.dart';
import 'package:moreshwara_pest_control/Screens/contact_us.dart';
import 'package:moreshwara_pest_control/Screens/homepage.dart';
import 'package:moreshwara_pest_control/Screens/services.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key});

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  bool isHomeHovered = false;
  bool isAboutHovered = false;
  bool isServicesHovered = false;
  bool isClientsHovered = false;
  bool isContactHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHomeHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHomeHovered = false;
                              });
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Homepage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isHomeHovered
                                    ? const Color.fromARGB(255, 248, 255, 119)
                                    : Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black,
                              ),
                              child: Text(
                                "Home",
                                style: GoogleFonts.urbanist(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isAboutHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isAboutHovered = false;
                              });
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const AboutUs(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isAboutHovered
                                    ? const Color.fromARGB(255, 248, 255, 119)
                                    : Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black,
                              ),
                              child: Text(
                                "About Us",
                                style: GoogleFonts.urbanist(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isClientsHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isClientsHovered = false;
                              });
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ClientsPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isClientsHovered
                                    ? const Color.fromARGB(255, 248, 255, 119)
                                    : Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black,
                              ),
                              child: Text(
                                "Clients",
                                style: GoogleFonts.urbanist(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isServicesHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isServicesHovered = false;
                              });
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ServicesPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isServicesHovered
                                    ? const Color.fromARGB(255, 248, 255, 119)
                                    : Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black,
                              ),
                              child: Text(
                                "Services",
                                style: GoogleFonts.urbanist(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isContactHovered = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isContactHovered = false;
                              });
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ContactUsPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isContactHovered
                                    ? const Color.fromARGB(255, 248, 255, 119)
                                    : Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                foregroundColor: Colors.black,
                              ),
                              child: Text(
                                "Contact Us",
                                style: GoogleFonts.urbanist(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // banner

              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 20),

              //Footer banner

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
                        const SizedBox(
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
                        const SizedBox(
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
                        const SizedBox(
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

              // Footer

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // about

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Tej Pest Control Services",
                          style: GoogleFonts.urbanist(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 230,
                          child: Text(
                            '''Established in year 2007, experience of 20+ years, ISO 9001-2008 certified. trained staff, more than 10,000 satisfied clients. use of 'tej' technique. having formulation and dosage of right amount of solventes to eradicate your whole pest problems, proved as a best pest control service provider in Pune, PCMC & Satara. ''',
                            style: GoogleFonts.urbanist(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),

                    //links

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Links',
                          style: GoogleFonts.urbanist(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Home",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "About",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Clients",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Services",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Contact",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_outline,
                              color: Colors.black,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Sitemap",
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    const SizedBox(width: 40),
                    // cards

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Old_Visa_Logo.svg/545px-Old_Visa_Logo.svg.png',
                              height: 50,
                            ),
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1200px-MasterCard_Logo.svg.png',
                              height: 50,
                            ),
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/4/4d/Maestro_logo.png',
                              height: 50,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'All Major Cards Accepted',
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),

                    // Contact and address

                    SizedBox(
                      width: 225,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Tej Pest Control',
                            style: GoogleFonts.urbanist(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'SR. No. - 15, Shop No. - 4, Datta Krupa Society, Near Chintamani Dnyanpeeth, Ambegaon BK, Pune, Maharashtra - 411046',
                            style: GoogleFonts.urbanist(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone: ",
                                style: GoogleFonts.urbanist(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "+91-8237069447",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "+91-9922063455",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "+91-9260473649",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email: ",
                                style: GoogleFonts.urbanist(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "tejpestcontrolservices@gmail.com,",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "tejpestcontrolservices1@gmail.com,",
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // done
                  ],
                ),
              ),

              // done
            ],
          ),
        ),
      ),
    );
  }
}
