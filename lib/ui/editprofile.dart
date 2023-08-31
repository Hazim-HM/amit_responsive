import 'package:finalamitproject/ui/educationScreen.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
            SizedBox(
              width: 100,
            ),
            Text(
              'Edit Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('images/camera.png')),
                  foregroundColor: Colors.green,
                  radius: 48,
                  backgroundImage: AssetImage("images/Logo.png"),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Photo',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 156, 163, 175)),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Bio',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 156, 163, 175)),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Address',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 156, 163, 175)),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'No.Handphone',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 156, 163, 175)),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefix: SizedBox(
                      width: 55,
                      child: Row(
                        children: [
                          Image.asset('images/FLAG.png'),
                          Icon(Icons.keyboard_arrow_down),
                          VerticalDivider(
                            color: Colors.black,
                            width: 1,
                            thickness: 2,
                          )
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 63,
              ),
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
                    onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EducationScreen(),
                            ),
                          );},
                    child: const Text('Save')),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ])),
    ));
  }
}
