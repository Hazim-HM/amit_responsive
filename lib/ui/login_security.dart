import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/ui/changepassword%20.dart';
import 'package:finalamitproject/ui/emailaddress.dart';
import 'package:finalamitproject/ui/phonenumber.dart';
import 'package:flutter/material.dart';

class LoginAndSecurity extends StatefulWidget {
  const LoginAndSecurity({super.key});

  @override
  State<LoginAndSecurity> createState() => _LoginAndSecurityState();
}

class _LoginAndSecurityState extends State<LoginAndSecurity> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Login and Security',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Column(
        children: [
          Container(
            height: 40,
            color: const Color.fromARGB(255, 244, 244, 245),
            child: Row(children: [
              const SizedBox(
                width: 24,
              ),
              const Text(
                'Job notification',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 107, 114, 128)),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Job Search Alert',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text('${MainCubit.get(context).user!.user!.email}'),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => emailaddress(),
                            ),
                          );},
                          icon: Icon(Icons.arrow_forward_rounded))
                    ],
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone number',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                      onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PhoneNumber(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward_rounded))
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                      onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChangePass(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward_rounded))
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Two-step verification',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        'Not active',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_rounded)),
                    ],
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Face ID',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_rounded))
                ],
              ),
              Divider(thickness: 2),
            ]),
          ),
        ],
      ),
    );
  }
}
