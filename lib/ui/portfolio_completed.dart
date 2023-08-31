import 'package:finalamitproject/ui/homscreen.dart';
import 'package:finalamitproject/ui/layout.dart';
import 'package:finalamitproject/ui/login.dart';
import 'package:flutter/material.dart';

class PortofolieCompleted extends StatefulWidget {
  const PortofolieCompleted({super.key});

  @override
  State<PortofolieCompleted> createState() => _PortofolieCompletedState();
}

class _PortofolieCompletedState extends State<PortofolieCompleted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Apply Job",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
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
                          builder: (_) => layoutScreens(),
                        ),
                      );
                    },
                    child: const Text('Back to home')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
