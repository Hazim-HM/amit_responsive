import 'package:finalamitproject/ui/Appliedjob_typework.dart';
import 'package:finalamitproject/ui/Uploadportfolio.dart';
import 'package:finalamitproject/ui/applyjob_biodata.dart';
import 'package:flutter/material.dart';

class AppliedAndRejectScreen extends StatefulWidget {
  const AppliedAndRejectScreen({super.key});

  @override
  State<AppliedAndRejectScreen> createState() => _AppliedAndRejectScreenState();
}

class _AppliedAndRejectScreenState extends State<AppliedAndRejectScreen> {
  var active = const Color(0xFF091A7A);
  var notactive = const Color(0xFFF4F4F5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
              const SizedBox(
                width: 100,
              ),
              const Text(
                'Applied Job',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF091A7A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  alignment: Alignment.center,
                  child: const Text('Active',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                InkWell(onTap: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AppliedAndRejectScreen(),
                            ),
                          );
                },
                  child: Container(
                    width: 160,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF4F4F5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    alignment: Alignment.center,
                    child: const Text('Rejected',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            height: 40,
            color: const Color.fromARGB(255, 244, 244, 245),
            child: Row(children: [
              const SizedBox(
                width: 24,
              ),
              const Text(
                '3 Jobs',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 107, 114, 128)),
              )
            ]),
          ),
          InkWell(onTap: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ApplyJobBioDataScreen(),
                            ),
                          );
          },
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 18, bottom: 18, right: 16, left: 16),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  'images/spectrum.png',
                                  scale: 1,
                                ),
                              ),
                              const SizedBox(width: 22),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UI/UX Designer',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text('Spectrum • Jakarta, Indonesia ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF374151)))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/archive-minus.png',
                                color: const Color.fromARGB(255, 17, 24, 39),
                              ))
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
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
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
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
                              'Remote',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 10),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Color(0xFFD1D5DB)))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF3366FF)))),
                                  child: const Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Biodata',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line.png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF9CA3AF)))),
                                  child: const Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9CA3AF)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Type of work',
                                  style: TextStyle(
                                      color: Color(0xFF111827),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line (1).png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF9CA3AF)))),
                                  child: const Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9CA3AF)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Upload portfolio',
                                  style: TextStyle(
                                      color: Color(0xFF111827),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ]),
                    )
                  ]),
                ),
              ),
            ),
          ),
          InkWell(onTap: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TypeWorkAppliedJobScreen(),
                            ),
                          );
          },
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 18, bottom: 18, right: 16, left: 16),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  'images/discord.png',
                                  scale: 1,
                                ),
                              ),
                              const SizedBox(width: 22),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UI/UX Designer',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text('Discord • Jakarta, Indonesia ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF374151)))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/archive-minus.png',
                                color: const Color.fromARGB(255, 17, 24, 39),
                              ))
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
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
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
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
                              'Remote',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 10),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Color(0xFFD1D5DB)))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF3366FF)))),
                                  child: const Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Biodata',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line.png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF9CA3AF)))),
                                  child: const Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Type of work',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line (1).png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF9CA3AF)))),
                                  child: const Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9CA3AF)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Upload portfolio',
                                  style: TextStyle(
                                      color: Color(0xFF111827),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ]),
                    )
                  ]),
                ),
              ),
            ),
          ),
          InkWell(onTap: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => UpdatePortofolioAppliedJobScreen(),
                            ),
                          );
          },
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 18, bottom: 18, right: 16, left: 16),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  fit: BoxFit.contain,
                                  'images/invision.png',
                                  scale: 1,
                                ),
                              ),
                              const SizedBox(width: 22),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'UI/UX Designer',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text('Invision • Jakarta, Indonesia ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF374151)))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'images/archive-minus.png',
                                color: const Color.fromARGB(255, 17, 24, 39),
                              ))
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
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
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
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
                              'Remote',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF3366FF)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 10),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Color(0xFFD1D5DB)))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF3366FF)))),
                                  child: const Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Biodata',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line.png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF9CA3AF)))),
                                  child: const Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Type of work',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('images/Line.png'),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                      color: const Color(0xFF3366FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          side: const BorderSide(
                                              color: Color(0xFF3366FF)))),
                                  child: const Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF4F4F5)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const Text(
                                  'Upload portfolio',
                                  style: TextStyle(
                                      color: Color(0xFF3366FF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ]),
                    )
                  ]),
                ),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
