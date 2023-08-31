import 'package:finalamitproject/ui/applyjob_biodata.dart';
import 'package:finalamitproject/ui/jobdetails_Company.dart';
import 'package:finalamitproject/ui/jobdetails_people.dart';
import 'package:flutter/material.dart';

class JobDescribtionScreen extends StatefulWidget {
  const JobDescribtionScreen({super.key});

  @override
  State<JobDescribtionScreen> createState() => _JobDescribtionScreenState();
}

class _JobDescribtionScreenState extends State<JobDescribtionScreen> {
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
                    'Job details',
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
                          color: const Color(0xFF091A7A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Desicription',
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
                          child: const Text('Company',
                              style: TextStyle(
                                  color: Color(0xFF6B7280),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      InkWell(onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => peopleJobDetailsScreen(),
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
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Description',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Skill Required',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '• A strong visual portfolio with clear understanding of UI methodologies',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    Text(
                      '• Ability to create hi-fidelity mock-ups in Figma',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    Text(
                      '• Ability to create various graphics for the web e.g. illustrations and icons',
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    Text(
                      '• Able to facilitate workshops and liaise with stakeholders',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    Text(
                      '• Proficiency in the Adobe Creative Suite',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    ),
                    Text(
                      '• Confident communicator with an analytical mindset Design library/Design system experience',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 85, 99)),
                    )
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
