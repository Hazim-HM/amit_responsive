import 'package:finalamitproject/ui/onboarding3.dart';
import 'package:flutter/material.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
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
                  'images/Background2.png',
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
                    'Hundreds of jobs are ',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'waiting for you to',
                    style: TextStyle(fontSize: 32),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'join',
                        style: TextStyle(fontSize: 32),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 60,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'together',
                          style: TextStyle(fontSize: 32),
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                "Immediately join us and start applying for the job you are interested in.",
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
                              builder: (_) => onboarding3(),
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
