import 'package:flutter/material.dart';

class WorkLocation extends StatefulWidget {
  const WorkLocation({super.key});

  @override
  State<WorkLocation> createState() => _WorkLocationState();
}

class _WorkLocationState extends State<WorkLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'Where are you prefefred Location?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Let us know, where is the work location you want at this time, so we can adjust it.',
                style: TextStyle(
                  color: Color(0xFF737379),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: 400,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF4F4F5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Work From Office',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        width: 150,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF091A7A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Remote Work',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 27),
              Text(
                'Select the country you want for your job',
                style: TextStyle(
                    color: Color(0xFF737379),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804.png'),
                          Text(
                            'United States',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (1).png'),
                          Text(
                            'Malaysia',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (2).png'),
                          Text(
                            'Singapore',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Indonesia.png'),
                          Text(
                            'Indonesia',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (3).png'),
                          Text(
                            'Philiphines',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (4).png'),
                          Text(
                            'Polandia',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (5).png'),
                          Text(
                            'India',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (6).png'),
                          Text(
                            'Vietnam',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (7).png'),
                          Text(
                            'China',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (8).png'),
                          Text(
                            'Canada',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (9).png'),
                          Text(
                            'Saudi Arabia',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (10).png'),
                          Text(
                            'Argentina',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 14, top: 8, bottom: 8),
                    // width: 151,
                    height: 41,
                    decoration: ShapeDecoration(
                        color: Color(0xFFD6E4FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: Color(0xFF3366FF),
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/Ellipse 804 (11).png'),
                          Text(
                            'Brazil',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                // padding: EdgeInsets.only(left: 15),
                width: 450,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 51, 102, 255)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {},
                    child: const Text('Next')),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// Container(
//                   width: 156,
//                   height: 60,
//                   decoration: ShapeDecoration(
//                       color: Color(0xFFD6E4FF),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           side: BorderSide(
//                             color: Color(0xFF3366FF),
//                           ))),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 14),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset('images/bezier.png'),
//                           Text(
//                             'UI/UX Designer',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w400),
//                           )
//                         ]),
//                   ),
//                 ),