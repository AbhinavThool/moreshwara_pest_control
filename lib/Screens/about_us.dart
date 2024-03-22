import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:moreshwara_pest_control/Screens/homepage.dart';

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
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Column(children: [
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Homepage(),
                                    ));
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
                              onPressed: () {},
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
                              onPressed: () {},
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
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/about_us/about.jpg"),

                              Image.asset("assets/about_us/about2.jpg")
                              // Image.network(
                              //     "https://pestcontrolservicespune.com/images/about.jpg"),
                              // Image.network(
                              //     "https://pestcontrolservicespune.com/images/norwegian-accreditation-surgical-supplies-1.jpg")
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 800,
                            width: 600,
                            child: Text(
                                '''Tej Pest Control was established in the year 2007 after having rich experience in the same industry. We are an ISO 9001-2008 certified company has more than 10000 satisfied clients and well trained staff. We are active in commercial, residential, institutional and industrial pest management. We provide a full range of pest management services including insect and rodent management, maintenance programs for a wide range of industries, inspections, bird exclusion, odor control, seminars and consulting services. We actively practice Integrated Pest Management techniques as recommended by the Ministry of Environment. This practice promotes using pesticides only when required and in conjunction with other non-chemical controls. Our technicians receive ongoing, monthly training in this regard.
                          
                          We are providing 100% customized solution as per requirement, we don’t have any fixed treatment we change and design it according to the problem and the place and use a unique formulation of medicines to eradicate the problem naturally & environment friendly way.
                          
                          We specialized In:
                          
                          Tej Pest Control & Cleaning Services provide a wide range of Herbal Pest Control services for commercial and residential pest control services including cockroaches, bed bugs, rodent/mouse, lizards, honey bee, flies, mosquitoes, insects, termite, pigeon, ant control services and cleaning services like sofa cleaning, sofa steam cleaning, water tank cleaning, housekeeping services, deep cleaning services etc. in all ares of Pune and Satara.'''),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact us',
                          style: GoogleFonts.urbanist(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: nameTextEditingController,
                    
                          decoration: InputDecoration(
                            hintText: "Enter name",
                            label: const Text("Enter name"),
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
                          height: 20,
                        ),
                        TextFormField(
                          controller: mailTextEditingController,
                    
                          //obscureText: true,
                          //obscuringCharacter: "*",
                          decoration: InputDecoration(
                            hintText: "Enter mail",
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
                          height: 20,
                        ),
                        TextFormField(
                          controller: descriptionTextEditingController,
                    
                          
                          decoration: InputDecoration(
                            hintText: "Enter description",
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
                          height: 20,
                        ),
                        TextFormField(
                          controller: numberTextEditingController,
                    
                          
                          decoration: InputDecoration(
                            hintText: "Enter Number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            
                          ),
                          validator: (value) {
                            print("In Number VALIDATOR");
                            if (value == null || value.isEmpty) {
                              return "Please enter Numver";
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
                                    content: Text("Submit Successful"),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Submit Failed"),
                                  ),
                                );
                              }
                            },
                            child: const Text("Submit"))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ]))));
  }
}
