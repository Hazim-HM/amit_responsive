import 'package:finalamitproject/ui/portfolio_completed.dart';
import 'package:flutter/material.dart';

class UpdatePortofolioAppliedJobScreen extends StatefulWidget {
  const UpdatePortofolioAppliedJobScreen({super.key});

  @override
  State<UpdatePortofolioAppliedJobScreen> createState() =>
      _UpdatePortofolioAppliedJobScreenState();
}

class _UpdatePortofolioAppliedJobScreenState
    extends State<UpdatePortofolioAppliedJobScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              Image.asset('images/Line.png'),
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
                              side: BorderSide(color: Color(0xFF3366FF)))),
                      child: Image.asset('images/tick-circle.png')),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Type of work',
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
              Image.asset('images/Line.png'),
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
                            side: BorderSide(color: Color(0xFF3366FF)))),
                    child: Text(
                      '3',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF3366FF)),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Upload portfolio',
                    style: TextStyle(
                        color: Color(0xFF3366FF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ]),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upload portfolio',
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
            SizedBox(
              height: 24,
            ),
            Text(
              'Upload CV*',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 72,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFD1D5DB)),
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset('images/PdfLogo.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hazim.CV',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'CV.pdf 300KB',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B7280)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/edit-2.png')),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/close-circle.png'))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      side: BorderSide(color: Color(0xFF3366FF))),
                  color: Color(0xFFECF2FF)),
              width: 420,
              height: 220,
              child: Column(children: [
                SizedBox(
                  height: 16,
                ),
                Image.asset('images/document-upload.png'),
                SizedBox(
                  height: 16,
                ),
                SizedBox(height: 8),
                Text(
                  'Upload your other file',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Max. file size 10 MB',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7280)),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF3366FF)),
                                  borderRadius: BorderRadius.circular(1000))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFD6E4FF))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/export.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add file',
                            style: TextStyle(
                                color: Color(0xFF3366FF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                )
              ]),
            ),
            SizedBox(
              height: 94,
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
                  onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PortofolieCompleted(),
                            ),
                          );},
                  child: const Text('Submit')),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      )),
    ));
  }
}
