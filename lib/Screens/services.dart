import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moreshwara_pest_control/Screens/about_us.dart';
import 'package:moreshwara_pest_control/Screens/clients.dart';
import 'package:moreshwara_pest_control/Screens/contact_us.dart';
import 'package:moreshwara_pest_control/Screens/homepage.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController mailTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  TextEditingController numberTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                              onPressed: () {},
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

              // Nav-Bar End
              // banner

              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 20),

              //Banner End

              //Content
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 800,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Header
                          Text(
                            'Treatments for Insects',
                            style: GoogleFonts.urbanist(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 20),

                          //Table
                          SizedBox(
                            width: 800,
                            height: 520,
                            child: Table(
                              children: [
                                // Table Header
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 247, 247, 202),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        width: 2,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Treatment Name",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Insects',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 1
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Cockrozome",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Cockroaches',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 2
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Bait-o-red",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Ants',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 3
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Lizorepel",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Bedbugs',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 4
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Hallabol",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Bedbugs',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 5
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Termisolve",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Termite',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 6
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Spidyweb",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Spidyweb',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 7
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Rodentaside",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Rodentaside',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 8
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Birdsoff",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Birds',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 9
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Sprayer",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        '	Silverfish firebrats',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 10
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Woodquid",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Woodborer',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 11
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Stick-a-spray",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        '	Wasps ticks',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // item 12
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 207),
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "General disinfectant",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        'Either of above insects in general',
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          //Information Para 1
                          Text(
                            '''A pesticide is any substance or mixture of substances intended for preventing, destroying, repelling or mitigating any pest. We have developed world-class formulation and best pest control systems with our years of experience and use of ISO certified chemicals.

But we even have the most advanced eco friendly way to treat your problem.

 - Biological Pest Control
 - Mechanical Pest Control
 - Physical Pest Control
 - Bait
 - Traps
 - Repellants
 - Space Fumigation
Pesticides often refer to the type of pest they control, e.g. insecticides kill insects and other arthropods; miticides or acaricides kill spider mites. But we even have the most advanced eco friendly way to treat your problem.''',
                            style: GoogleFonts.urbanist(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),

                          // List of insects
                          //1
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cockroaches and Ants:",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/1085620-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'The length of time it takes to rid your home of a cockroach infestation depends largely upon species and size of infestation. Many over-the-counter products homeowners utilize often prove ineffective against a cockroach infestation. As most of these pests are extremely adaptable and may even be resistant to some home extermination methods. They hides in cracks crevices of kitchen washrooms shoeracks drainages lofts or beds etc so it is necessary to call trained pest control professionals like us. Tej pest control services has invented a best technique to overcome from cockroach and ants. The most advance technique is used at tej which will be resistance proof by pests call tej to know your solution.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //2
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Termite:",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/1026156-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        "Owing to their wood-eating habits, many termite species do great damage to unprotected buildings documents furniture pop structure and other wooden structures.Their habit of remaining concealed often results in their presence being undetected until the timbers are severely damaged, leaving a thin layer of a wall that protects them from the environment. So it can be either treated preconstruction or post construction. we here at tej pest control give 3, 5 up to 50 years of warranty or AMC's check with help of latest instruments techniques and optimum tej formulation check with us which one is applicable at your place. Tej pest control services has better techniques to control Termite. Call us for free inspection and suggestions. Best termite pest control.use of IS-6313",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //3
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bedbugs, Fleas, Ticks :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/3385863-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Pest Control Services in Sadashiv Peth, Pune Bed bugs live on human blood for survival. They generally hide in mattress seam and bed cracks. They may also hide in furniture and cracks & crevices in the wall. They spread mainly by baggage and clothing of travelers and visitors, bedding material and furniture. They need be to be treated thoroughly contact best pest control tej expert for complete eradication with eco friendly non hazardous way that you always wanted. Tej pest control services has vast experience in treatment of Bedbugs, Fleas, Ticks as well as all pests.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //4
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Birds: ",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/214911-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Pest Control Service near me, Pune The one near you are now considered as pests too because of its damage to humans. We here use harmless techniques for guaranteed results. Tej Pest Control services are leaders in complete bird control. Birds, especially pigeons are known to be one of the most disastrous and sickening pests. Pigeons are reservoirs of bacteria, fungi and viruses. Call us for birds pest control services.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //5
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rats, Mice, Snakes :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/930994-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Pest Control Services in Aundh, Pune Rodents’ biology and habits can make them challenging to control, and they present a serious menace to your property. Rats can harbor and transmit a number of serious diseases. They can also introduce disease-carrying parasites such as fleas and ticks into your home. It is recommended that anyone experiencing a rodent infestation contact a pest control professional to arrange for a consultation. Solutions available are of most unique and experienced such as different baits and baits station traps etc. Tej Pest Control Services has worked in controlling of Rats, Mice, Snakes etc.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //6
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lizard, Spider, Crawling insects :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/50742-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Pest Control Services in Hinjewadi, Pune. This insects are big threats at premises for soft hearted and even for your reputation, so need to be treated carefully at regular intervals so as to be free from this crawlers. Tej Pest Control has special formulated techniques for Lizard, Spider, Crawling insects etc.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //7
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Woodborer :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/567257-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Termite Control Services in Camp, Pune. You may not notice these beetles except when they collect talcum type powder on the furnitures parts sills or corners of the rooms in your house, but you will notice the tell tale flight holes and damage to wood around your home. Tej Pest Control services treat hear with help of injection course. With 100% guaranteed results.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //8
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mosquitoes :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/211-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Bedbugs Pest Control Services in Lohegaon, Pune. Can be divided as dengue Mosquitoes, malaria Mosquitoes, household mosquitoes etc. Being a flying insects it needs to be treated carefully from its very first stage of larvae. Tej Pest Control has various treatments can be for fogging, chemical, biological, eco friendly as the problem seems to occur.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          //9
                          SizedBox(
                            width: 800,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "House Flies :",
                                  style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 110,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://static.thenounproject.com/png/3386444-200.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 650,
                                      child: Text(
                                        'Cockroach Pest Control Services in Koregaon Park, Pune. There are thousands of types of flies as per the area of occurrence carrying pathogens. These pathogens can cause disease in humans and animals, including typhoid fever, cholera, bacillary dysentery and hepatitis. Sanitation is critical to controlling these pests, but accurate identification is essential for successful fly control. So Tej Pest Control Services treat the area after inspection for critical problems options available are biological,chemical, baits, repellents etc call us for instant knockdown.',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
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

                    //Contact form
                    SizedBox(
                      //Contact Form
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact us',
                            style: GoogleFonts.urbanist(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: nameTextEditingController,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Enter Your Name",
                              label: const Text("Enter Your Name"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            validator: (value) {
                              print("In name VALIDATOR");
                              if (value == null || value.isEmpty) {
                                return "Please enter username";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: mailTextEditingController,

                            //obscureText: true,
                            //obscuringCharacter: "*",
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Enter Your Email",
                              label: const Text("Enter Your Email"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            validator: (value) {
                              print("In mail VALIDATOR");
                              if (value == null || value.isEmpty) {
                                return "Please enter name";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: descriptionTextEditingController,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Enter Description",
                              label: const Text("Enter Description"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              suffixIcon: const Icon(
                                Icons.remove_red_eye_outlined,
                              ),
                            ),
                            validator: (value) {
                              print("In description VALIDATOR");
                              if (value == null || value.isEmpty) {
                                return "Please enter description";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: numberTextEditingController,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "Enter Your Number",
                              label: const Text("Enter Your Number"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            validator: (value) {
                              print("In Number VALIDATOR");
                              if (value == null || value.isEmpty) {
                                return "Please enter Number";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              bool submitValidated =
                                  _formKey.currentState!.validate();
                              if (submitValidated) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "Submit Successful",
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "Submit Failed",
                                    ),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              "Submit",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Content End

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

              //Footer banner End

              // Footer

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: 275,
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
                          const SizedBox(height: 20),
                          Text(
                            'SR. No. - 15, Shop No. - 4, Datta Krupa Society, Near Chintamani Dnyanpeeth, Ambegaon BK, Pune, Maharashtra - 411046',
                            style: GoogleFonts.urbanist(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
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
                          const SizedBox(height: 10),
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
                                "moreshwarapestcontrolservices9@gmail.com",
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

              // Footer End
              // done
            ],
          ),
        ),
      ),
    );
  }
}
