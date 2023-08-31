import 'package:finalamitproject/ui/Jobdetails_descr.dart';
import 'package:flutter/material.dart';

import 'applyjob_biodata.dart';

class CompanyJobDrteailsScreen extends StatefulWidget {
  const CompanyJobDrteailsScreen({super.key});

  @override
  State<CompanyJobDrteailsScreen> createState() =>
      _CompanyJobDrteailsScreenState();
}

class _CompanyJobDrteailsScreenState extends State<CompanyJobDrteailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: 450,
        height: 700,
        child: Stack(children: [
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_outlined)),
                  const SizedBox(),
                  const Text(
                    'Applied Job',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/archive-minus.png',
                        color: Colors.blue,
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Image.asset('images/spectrum.png'),
                  const Text(
                    'Senior UI Designer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text('Twitter • Jakarta, Indonesia ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF374151)))
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding: const EdgeInsets.only(top: 6),
                  width: 87,
                  height: 30,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color(0xFFD6E4FF)),
                  child: const Text(
                    'Fulltime',
                    style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.only(top: 6),
                  width: 87,
                  height: 30,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color(0xFFD6E4FF)),
                  child: const Text(
                    'Onsite',
                    style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.only(top: 6),
                  width: 87,
                  height: 30,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color(0xFFD6E4FF)),
                  child: const Text(
                    'Senior',
                    style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: InkWell(onTap: () {
                  Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => JobDescribtionScreen(),
                            ),
                          );
                },
                  child: Container(
                    width: 330,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF4F4F5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          alignment: Alignment.center,
                          child: const Text('Desicription',
                              style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF091A7A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          alignment: Alignment.center,
                          child: const Text('Company',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                        InkWell(onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CompanyJobDrteailsScreen(),
                            ),
                          );
                        },
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF4F4F5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            alignment: Alignment.center,
                            child: const Text('People',
                                style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(children: [
                      Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: 160,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFD1D5DB)),
                                borderRadius: BorderRadius.circular(8))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF9CA3AF)),
                              ),
                              Text(
                                'twitter@mail.com',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF111827)),
                              )
                            ]),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: 160,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFD1D5DB)),
                                borderRadius: BorderRadius.circular(8))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Website',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF9CA3AF)),
                              ),
                              Text(
                                'https://twitter.com',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF111827)),
                              )
                            ]),
                      )
                    ]),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'About Company',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ]),
          )),
          Positioned(
            right: 20,
            bottom: 10,
            child: Container(
              // padding: EdgeInsets.only(left: 15),
              width: 350,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 51, 102, 255)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ApplyJobBioDataScreen(),
                            ),
                          );},
                  child: const Text('Apply now')),
            ),
          ),
        ]),
      ),
    ));
  }
}
