import 'package:finalamitproject/ui/experience.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
              SizedBox(
                width: 100,
              ),
              Text(
                'Experience',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            width: 330,
            height: 485,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFD1D5DB)))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 12, bottom: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Position *',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Type of work',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Start Year *',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Image.asset('images/calendar.png'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'End Year',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Image.asset('images/calendar.png'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 450,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromARGB(255, 51, 102, 255)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25)))),
                          onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ExperienceScreeen(),
                            ),
                          );},
                          child: const Text('Save')),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            width: 330,
            height: 100,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Color(0xFFD1D5DB)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset('images/LogoUV.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The University of Arizona',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Bachelor of Art and Design',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6B7280)),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '2012 - 2015',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9CA3AF)),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ExperienceScreeen(),
                            ),
                          );},
                        icon: Image.asset('images/edit-2.png')),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ]),
      )),
    ));
  }
}
