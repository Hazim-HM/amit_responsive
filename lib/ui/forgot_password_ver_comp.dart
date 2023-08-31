import 'package:finalamitproject/ui/changepassword%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgotPassVerComp extends StatefulWidget {
  const ForgotPassVerComp({super.key});

  @override
  State<ForgotPassVerComp> createState() => _ForgotPassVerCompState();
}

class _ForgotPassVerCompState extends State<ForgotPassVerComp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('images/Email Ilustration.png'),
                Text(
                  'Check your Email',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Text(
                  'We have sent a reset password to your email address',
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
                    onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChangePass(),
                            ),
                          );},
                    child: const Text('Open email app')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
