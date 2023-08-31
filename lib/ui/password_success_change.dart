
import 'package:finalamitproject/ui/login.dart';
import 'package:flutter/material.dart';


class PasswordSuccChange extends StatefulWidget {
  const PasswordSuccChange({super.key});

  @override
  State<PasswordSuccChange> createState() => _PasswordSuccChangeState();
}

class _PasswordSuccChangeState extends State<PasswordSuccChange> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('images/Password Succesfully Ilustration (1).png'),
                Text(
                  'Password changed succesfully!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Your password has been changed successfully, we will let you know if there are more problems with your account',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7280)),
                ),
              ]),
              Container(
                // padding: EdgeInsets.only(left: 15),
                width: 450,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 51, 102, 255)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(),
                        ),
                      );
                    },
                    child: const Text('Open email app')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
