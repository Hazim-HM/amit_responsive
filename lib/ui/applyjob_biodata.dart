import 'package:finalamitproject/ui/Appliedjob_typework.dart';
import 'package:flutter/material.dart';

class ApplyJobBioDataScreen extends StatefulWidget {
  const ApplyJobBioDataScreen({super.key});

  @override
  State<ApplyJobBioDataScreen> createState() => _ApplyJobBioDataScreenState();
}

class _ApplyJobBioDataScreenState extends State<ApplyJobBioDataScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
              SizedBox(
                width: 100,
              ),
              Text(
                'Applied Job',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(children: [
              Image.asset('images/spectrum.png'),
              Text(
                'UI/UX Designer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('Spectrum • Jakarta, Indonesia ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF374151)))
            ]),
          ),
          SizedBox(
            height: 32,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 44,
                    width: 44,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: Color(0xFF3366FF)))),
                    child: Image.asset('images/tick-circle.png')),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Biodata',
                  style: TextStyle(
                      color: Color(0xFF3366FF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Image.asset('images/Line (1).png'),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 44,
                  width: 44,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(color: Color(0xFF9CA3AF)))),
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9CA3AF)),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Type of work',
                  style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              width: 18,
            ),
            Image.asset('images/Line (1).png'),
            SizedBox(
              width: 18,
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 44,
                  width: 44,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(color: Color(0xFF9CA3AF)))),
                  child: Text(
                    '3',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9CA3AF)),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Upload portfolio',
                  style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ]),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 44, right: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Biodata',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Fill in your bio data correctly',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B7280)),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44, right: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name*',
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
                      prefixIcon: Image.asset('images/profile.png'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Email*',
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
                      prefixIcon: Image.asset('images/sms.png'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'No.Handphone*',
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
                      prefix: SizedBox(
                        width: 55,
                        child: Row(
                          children: [
                            Image.asset('images/FLAG.png'),
                            Icon(Icons.keyboard_arrow_down),
                            VerticalDivider(
                              color: Colors.black,
                              width: 1,
                              thickness: 2,
                            )
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 63,
                ),
                Container(
                  // padding: EdgeInsets.only(left: 15),
                  width: 450,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 51, 102, 255)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TypeWorkAppliedJobScreen(),
                            ),
                          );},
                      child: const Text('Next')),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      )),
    ));
  }
}
