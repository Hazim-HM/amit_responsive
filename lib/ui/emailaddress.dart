import 'package:flutter/material.dart';

class emailaddress extends StatefulWidget {
  const emailaddress({super.key});

  @override
  State<emailaddress> createState() => _emailaddressState();
}

class _emailaddressState extends State<emailaddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
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
                    'Email address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Main e-mail address',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextFormField(
                enabled: true,
                decoration: InputDecoration(
                    prefixIcon: Image.asset('images/sms.png'),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
              SizedBox(height: 400),
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
