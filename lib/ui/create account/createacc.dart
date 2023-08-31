import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/ui/intersted_work.dart';
import 'package:finalamitproject/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  var email = TextEditingController();
  var pass = TextEditingController();
  var name = TextEditingController();

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
                  controller: name,
                  enabled: true,
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('images/profile.png'),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  enabled: true,
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('images/sms.png'),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13))),
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
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Password must be at least 8 characters',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 156, 163, 175)),
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
                        'Already have an account?',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 156, 163, 175)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Login()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 30, top: 24),
                    width: 300,
                    height: 50,
                    child:  BlocConsumer<MainCubit, MainState>(
              listener: (context, state) {
                if (state is SuccessRegisterState) {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => InterestedWork(),
                            ),
                          );
                }
              },
              builder: (context, state) {
                return state is LoadingRegisterState
                    ? const Center(child: CircularProgressIndicator())
                    :ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 209, 213, 219)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                        onPressed: () {
                          MainCubit.get(context)
                              .register(name.text, email.text, pass.text);
                        },
                        child: const Text('Create Account'));})),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Divider(height: 10, color: Colors.black),
                    const Text("Or Sign up With Account"),
                    const Divider()
                  ],
                ),
                SizedBox(
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
