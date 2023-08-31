import 'package:finalamitproject/ui/applyjob_biodata.dart';
import 'package:flutter/material.dart';

class peopleJobDetailsScreen extends StatefulWidget {
  const peopleJobDetailsScreen({super.key});

  @override
  State<peopleJobDetailsScreen> createState() => _peopleJobDetailsScreenState();
}

class _peopleJobDetailsScreenState extends State<peopleJobDetailsScreen> {
  static List<String> list = ['UI/UX Design', 'Frontend', 'Backend', 'UX'];

  String dropdownValue = list.first;

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
              const SizedBox(
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
              const SizedBox(
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
              const SizedBox(
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
                      Container(
                        width: 100,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF091A7A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        alignment: Alignment.center,
                        child: const Text('People',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '6 Employees For',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF111827)),
                      ),
                      const Text(
                        'UI/UX Design',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 160,
                    height: 40,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Color(0xFF6B7280)),
                            borderRadius: BorderRadius.circular(100))),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 16,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF111827)),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Dimas Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dimas Adi Saputro',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Senior UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Syahrul Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Syahrul Ramadhani',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Senior UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Farrel Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Farrel Daniswara',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Senior UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Azzahra Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Azzahra Farrelika',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Dindra Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dindra Desmipian',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        child: CircleAvatar(
                          child: Image.asset('images/Ferdi Profile.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ferdi Saputra',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF111827)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'UI/UX Designer at Twitter',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Work during',
                        style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '5 Years',
                        style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 12,
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
