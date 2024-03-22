import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:moreshwara_pest_control/Screens/clients.dart';
import 'package:moreshwara_pest_control/Screens/contact_us.dart';
import 'package:moreshwara_pest_control/Screens/homepage.dart';
import 'package:moreshwara_pest_control/Screens/services.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                              onPressed: () {},
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
                  "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 20),

              // main

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Need Help With Moreshwara Enterprises?',
                        style: GoogleFonts.urbanist(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.network(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                                width: 200,
                                height: 150,
                              ),
                              Image.network(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                                width: 200,
                                height: 150,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 450,
                            width: 600,
                            child: Text(
                              '''Tej Pest Control was established in the year 2007 after having rich experience in the same industry. We are an ISO 9001-2008 certified company has more than 10000 satisfied clients and well trained staff. We are active in commercial, residential, institutional and industrial pest management. We provide a full range of pest management services including insect and rodent management, maintenance programs for a wide range of industries, inspections, bird exclusion, odor control, seminars and consulting services. We actively practice Integrated Pest Management techniques as recommended by the Ministry of Environment. This practice promotes using pesticides only when required and in conjunction with other non-chemical controls. Our technicians receive ongoing, monthly training in this regard.

                              We are providing 100% customized solution as per requirement, we don’t have any fixed treatment we change and design it according to the problem and the place and use a unique formulation of medicines to eradicate the problem naturally & environment friendly way.
                              
                              We specialized In:
                              Tej Pest Control & Cleaning Services provide a wide range of Herbal Pest Control services for commercial and residential pest control services including cockroaches, bed bugs, rodent/mouse, lizards, honey bee, flies, mosquitoes, insects, termite, pigeon, ant control services and cleaning services like sofa cleaning, sofa steam cleaning, water tank cleaning, housekeeping services, deep cleaning services etc. in all ares of Pune and Satara.''',
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
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
              const SizedBox(
                height: 10,
              ),

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
            ],
          ),
        ),
      ),
    );
  }
}
