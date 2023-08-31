import 'package:finalamitproject/ui/work_location.dart';
import 'package:flutter/material.dart';

class InterestedWork extends StatefulWidget {
  const InterestedWork({super.key});

  @override
  State<InterestedWork> createState() => _InterestedWorkState();
}

class _InterestedWorkState extends State<InterestedWork> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(children: [
            Text(
              'What type of work are you interested in?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Tell us what you’re interested in so we can customise the app for your needs.',
              style: TextStyle(
                color: Color(0xFF737379),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              children: [
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFD6E4FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFF3366FF),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/bezier.png'),
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFFAFAFA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFFD1D5DB),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/Ilustrator Category.png'),
                          Text(
                            'Ilustrator Designer',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFFAFAFA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFFD1D5DB),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/Developer Category.png'),
                          Text(
                            'Developer',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFFAFAFA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFFD1D5DB),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/Management Category.png'),
                          Text(
                            'Management',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFFAFAFA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFFD1D5DB),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'images/Information technology category.png'),
                          Text(
                            'Information Technology',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 156,
                  height: 125,
                  decoration: ShapeDecoration(
                      color: Color(0xFFD6E4FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color(0xFF3366FF),
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'images/Research and Analytics category.png'),
                          Text(
                            'Research and Analytics',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 66,
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
                  onPressed: () {
                    Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => WorkLocation(),
                            ),
                          );
                  },
                  child: const Text('Next')),
            ),
          ]),
        ),
      ),
    );
  }
}
