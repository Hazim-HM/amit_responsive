import 'package:finalamitproject/ui/password_success_change.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
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
                    'Change Password',
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
                  'Enter your old password',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Enter your new passwords',
                  style: TextStyle(fontSize: 16),
                ),
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
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Confirm your new password',
                  style: TextStyle(fontSize: 16),
                ),
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
              SizedBox(height: 250),
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PasswordSuccChange(),
                          ),
                        );
                      },
                      child: const Text('Save'))),
            ]),
          ),
        ),
      ),
    );
  }
}
