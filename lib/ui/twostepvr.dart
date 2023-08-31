import 'package:finalamitproject/ui/2stepver.dart';
import 'package:flutter/material.dart';

class TwoStepVer extends StatefulWidget {
  const TwoStepVer({super.key});

  @override
  State<TwoStepVer> createState() => _TwoStepVerState();
}

class _TwoStepVerState extends State<TwoStepVer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 56,
                  ),
                  const Text(
                    'Two-step verification',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Add phone number',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'We will send a verification code to this number',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 107, 114, 128)),
                    ),
                    TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          prefix: Row(
                            children: [
                              Image.asset('images/FLAG.png'),
                              IconButton(
                                icon: const Icon(Icons.keyboard_arrow_down),
                                onPressed: () {},
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Enter your password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                          prefixIcon: Image.asset('images/lock.png'),
                          suffixIcon: InkWell(
                              onTap: () {},
                              child: Image.asset('images/eye-slash.png')),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 300),
              Container(
                  margin: const EdgeInsets.only(left: 30, top: 24),
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 51, 102, 255)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TwoStepVerCode(),
                            ),
                          );},
                      child: const Text('Send Code', style: TextStyle(color: Colors.white),))),
            ]),
          ),
        ),
      ),
    );
  }
}
