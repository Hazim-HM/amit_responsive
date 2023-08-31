import 'package:finalamitproject/ui/Portofolioscreen.dart';
import 'package:flutter/material.dart';

class ExperienceScreeen extends StatefulWidget {
  const ExperienceScreeen({super.key});

  @override
  State<ExperienceScreeen> createState() => _ExperienceScreeenState();
}

class _ExperienceScreeenState extends State<ExperienceScreeen> {
  @override
  Widget build(BuildContext context) {
    var val = true;
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
            height: 620,
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
                      'Company name *',
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
                      'Location',
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
                          prefixIcon: Image.asset('images/location.png'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Color.fromARGB(255, 51, 102, 255),
                            value: val,
                            onChanged: (val) {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        Text(
                          'I am currently working in this role',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF111827)),
                        )
                      ],
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
                              builder: (_) => PortfolioScreen(),
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
                    Image.asset('images/Group 15495.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Senior UI/UX Designer',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Remote • GrowUp Studio',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6B7280)),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '2019 - 2022',
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
                        onPressed: () {},
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
