import 'package:finalamitproject/ui/onboarding2.dart';
import 'package:flutter/material.dart';

class onbording1 extends StatefulWidget {
  const onbording1({super.key});

  @override
  State<onbording1> createState() => _onbording1State();
}

class _onbording1State extends State<onbording1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 424,
              child: Stack(alignment: Alignment.topCenter, children: [
                Image.asset(
                  height: 424,
                  width: 375,
                  'images/Background.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("images/Logo.png"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                color: Color.fromARGB(255, 107, 114, 128)),
                          ))
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Find a job ,and',
                    style: TextStyle(fontSize: 32),
                  ),
                  TextButton(
                      onPressed: () {},
                      child:
                          const Text('start', style: TextStyle(fontSize: 32)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'building',
                        style: TextStyle(fontSize: 32),
                      )),
                  const Text(
                    'your career',
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'from now on',
                style: TextStyle(fontSize: 32),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                "Explore over 25,924 available job roles and upgrade your operator now.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, top: 24),
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => onboarding2(),
                            ),
                          );},
                  child: const Text('Next ')),
            )
          ],
        ),
      ),
    );
  }
}
