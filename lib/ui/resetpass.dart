import 'package:finalamitproject/ui/changepassword%20.dart';
import 'package:finalamitproject/ui/forgot_password_ver_comp.dart';
import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back),
                  Image.asset('images/Logo.png')
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Reset Password',
                style: TextStyle(fontSize: 28),
              ),
              const Text(
                'Enter the email address you used when you joined and we will send you instructions to reset your password.',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 107, 114, 128)),
              ),
              const SizedBox(
                height: 44,
              ), 
              const SizedBox(height: 20),
              TextFormField(
                enabled: true,
                decoration: InputDecoration(
                    prefixIcon: Image.asset('images/sms.png'),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
              const SizedBox(
                height: 205,
              ),
              Container(
                height: 32,
                margin: const EdgeInsets.only(left: 58, right: 68),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have account ?",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 14),
                        ))
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 30, top: 24),
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 209, 213, 219)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () {Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ForgotPassVerComp(),
                            ),
                          );},
                      child: const Text('Request password reset'))),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Divider(height: 10, color: Colors.black),
                  const Text("Or Sign up With Account"),
                  const Divider()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
