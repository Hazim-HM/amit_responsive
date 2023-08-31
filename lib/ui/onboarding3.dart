import 'package:finalamitproject/ui/create%20account/createacc.dart';
import 'package:flutter/material.dart';

class onboarding3 extends StatefulWidget {
  const onboarding3({super.key});

  @override
  State<onboarding3> createState() => _onboarding3State();
}

class _onboarding3State extends State<onboarding3> {
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
                  'images/Background3.png',
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
                    'Get the best',
                    style: TextStyle(fontSize: 32),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('choice for',
                          style: TextStyle(fontSize: 32)))
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
                        'the job',
                        style: TextStyle(fontSize: 32),
                      )),
                  const Text(
                    "you've always",
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'dreamed of',
                style: TextStyle(fontSize: 32),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                "The better the skills you have, the greater the good job opportunities for you.",
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CreateAcc(),
                      ),
                    );
                  },
                  child: const Text('Get Started')),
            )
          ],
        ),
      ),
    );
  }
}
