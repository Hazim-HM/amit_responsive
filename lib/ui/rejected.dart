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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 10,
            child: Column(children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_outlined)),
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
                        color: const Color(0xFFF4F4F5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      alignment: Alignment.center,
                      child: const Text('Active',
                          style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                    InkWell(
                      onTap: () {
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
                          color: const Color(0xFF091A7A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Rejected',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('images/Data Ilustration.png'),
                Text(
                  'No applications were rejected',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'If there is an application that is rejected by the company it will appear here',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7280)),
                ),
              ]),
            ],
          ),
        ],
      ),
    ));
  }
}
