import 'package:finalamitproject/chat/chat_page.dart';
import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/ui/LanguageScreen.dart';
import 'package:finalamitproject/ui/Portofolioscreen.dart';
import 'package:finalamitproject/ui/Privacyscreen.dart';
import 'package:finalamitproject/ui/appliedscreen.dart';
import 'package:finalamitproject/ui/create%20account/createacc.dart';
import 'package:finalamitproject/ui/editprofile.dart';
import 'package:finalamitproject/ui/educationScreen.dart';
import 'package:finalamitproject/ui/experience.dart';
import 'package:finalamitproject/ui/homscreen.dart';
import 'package:finalamitproject/ui/layout.dart';
import 'package:finalamitproject/ui/profile.dart';
import 'package:finalamitproject/ui/resetpass.dart';
import 'package:finalamitproject/ui/terms&conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
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
                  'Create Account',
                  style: TextStyle(fontSize: 28),
                ),
                const Text(
                  'Please create an account to find your dream job',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 107, 114, 128)),
                ),
                const SizedBox(
                  height: 44,
                ),
                TextFormField(
                  controller: email,
                  enabled: true,
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('images/sms.png'),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: pass,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (val) {}),
                        const Text('Remeber me'),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                               Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ResetPass(),
                            ),
                          );
                              },
                              child: const Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 89, 131, 255)),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 75,
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
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => CreateAcc()));
                          },
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
                    child: BlocConsumer<MainCubit, MainState>(
                      listener: (context, state) {
                        if (state is SuccessLoginState) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => layoutScreens(),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        return ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 209, 213, 219)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)))),
                            onPressed: () {
                              MainCubit.get(context)
                                  .loginFunc(email.text, pass.text);
                            },
                            child: const Text('Login'));
                      },
                    )),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 154,
                      height: 46,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)))),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 255, 255, 255))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('images/google.png'),
                              const Text(
                                'Google',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 54, 63, 94)),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 154,
                      height: 46,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)))),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 255, 255, 255))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('images/Facebook.png'),
                              const Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 54, 63, 94)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
