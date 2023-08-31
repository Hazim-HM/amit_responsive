import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
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
                    'Phone Number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Main phone number',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextFormField(
                enabled: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefix: Container(
                      width: 80,
                      child: Row(
                        children: [
                          Image.asset('images/FLAG.png'),
                          IconButton(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 250,
                    child: const Text(
                      maxLines: 2,
                      'Use the phone number to reset your password',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 107, 114, 128)),
                    ),
                  ),
                  Switch(value: true, onChanged: (val) {})
                ],
              ),
              const SizedBox(height: 380),
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
                      onPressed: () {},
                      child: const Text('Save'))),
            ]),
          ),
        ),
      ),
    );
  }
}
