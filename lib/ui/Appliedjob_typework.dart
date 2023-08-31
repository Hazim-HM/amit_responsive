import 'package:finalamitproject/ui/appliedscreen.dart';
import 'package:flutter/material.dart';

class TypeWorkAppliedJobScreen extends StatefulWidget {
  const TypeWorkAppliedJobScreen({super.key});

  @override
  State<TypeWorkAppliedJobScreen> createState() =>
      _TypeWorkAppliedJobScreenState();
}

class _TypeWorkAppliedJobScreenState extends State<TypeWorkAppliedJobScreen> {
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
              Image.asset(
                'images/discord.png',
                fit: BoxFit.cover,
                scale: 1,
                width: 50,
              ),
              Text(
                'UI/UX Designer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('Discord • Jakarta, Indonesia ',
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
                  child: Text(
                    '2',
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
                      'Type of work',
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
          Row(children: [
            Column(
              children: [Text('Senior UX Designer',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),Text('CV.pdf')],
            )
          ],), ElevatedButton(
                            style: ButtonStyle(
                              
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)))),
                            onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AppliedAndRejectScreen(),
                            ),
                          );
                              
                            },
                            child: const Text('Next'))
        ],
      )),
    ));
  }
}
