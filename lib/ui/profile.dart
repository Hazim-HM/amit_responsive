import 'dart:io';

import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/ui/Portofolioscreen.dart';
import 'package:finalamitproject/ui/Privacyscreen.dart';
import 'package:finalamitproject/ui/editprofile.dart';
import 'package:finalamitproject/ui/language.dart';
import 'package:finalamitproject/ui/login_security.dart';
import 'package:finalamitproject/ui/notification_setting.dart';
import 'package:finalamitproject/ui/terms&conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // File? image;
  // Future pickImage() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image == null) return;
  //     final imageTemp = File(image.path);
  //     setState(() => this.image = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {}, icon: Image.asset('images/logout.png'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 5, color: Colors.white)),
                      child: CircleAvatar(
                        foregroundColor: Colors.green,
                        radius: 90,
                        backgroundImage: AssetImage("images/Logo.png"),
                      ),
                    ),
                    Text(
                      "${MainCubit.get(context).user!.user!.name}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('senior ui/ux'),
                  ],
                )
              ],
            ),
            SizedBox(height: 24),
            Container(
              color: Color.fromARGB(255, 250, 250, 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: const [
                      Text('Applied',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text('46',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: const [
                      Text('Reviewed',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text('23',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: const [
                      Text('Contacted',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text('16',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500))
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Text(
                "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 135, 140, 152)),
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Container(
              height: 40,
              color: Color.fromARGB(255, 244, 244, 245),
              child: Row(children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Genral',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 107, 114, 128)),
                )
              ]),
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 214, 228, 255),
                            child: Image.asset(
                              'images/profile.png',
                              color: Color.fromARGB(255, 78, 122, 255),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EditProfileScreen(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 214, 228, 255),
                            child: Image.asset(
                              'images/folder-favorite.png',
                              color: Color.fromARGB(255, 78, 122, 255),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Portfolio',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PortfolioScreen(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 214, 228, 255),
                            child: Image.asset(
                              'images/global.png',
                              color: Color.fromARGB(255, 78, 122, 255),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Langauge',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LanguagePicker(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 214, 228, 255),
                            child: Image.asset(
                              'images/notification (1).png',
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Notification',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NotificationSetting(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 214, 228, 255),
                            child: Image.asset(
                              'images/lockprofile.png',
                              color: Color.fromARGB(255, 78, 122, 255),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Login and security',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LoginAndSecurity(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Container(
              height: 40,
              color: Color.fromARGB(255, 244, 244, 245),
              child: Row(children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Others',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 107, 114, 128)),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Accesibility',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Help Center',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TermsAndConditonsScreen(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PrivacyScreen(),
                            ),
                          );}, icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
