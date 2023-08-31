import 'package:flutter/material.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool light = true;
  bool light1 = true;
  bool light2 = false;
  bool light3 = true;
  bool light4 = false;
  bool light5 = true;
  bool light6 = true;
  bool light7 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Notification',
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Switch(
                    value: light,
                    activeColor: Colors.blue,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Job Application Update',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Switch(
                    value: light1,
                    activeColor: Colors.blue,
                    onChanged: (bool value1) {
                      setState(() {
                        light1 = value1;
                      });
                    },
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Job Application Reminders',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Switch(
                    value: light2,
                    activeColor: Colors.blue,
                    onChanged: (bool value2) {
                      setState(() {
                        light2 = value2;
                      });
                    },
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jobs You May Be Interested In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Switch(
                    value: light3,
                    activeColor: Colors.blue,
                    onChanged: (bool value3) {
                      setState(() {
                        light3 = value3;
                      });
                    },
                  )
                ],
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Job Seeker Updates',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Switch(
                    value: light4,
                    activeColor: Colors.blue,
                    onChanged: (bool value4) {
                      setState(() {
                        light4 = value4;
                      });
                    },
                  )
                ],
              ),
              Divider(thickness: 2),
              SizedBox(
                height: 32,
              ),
            ]),
          ),
          Container(
            height: 40,
            color: const Color.fromARGB(255, 244, 244, 245),
            child: Row(children: [
              const SizedBox(
                width: 24,
              ),
              const Text(
                'Other notification',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 107, 114, 128)),
              )
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
                      'Show Profile',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Switch(
                      value: light5,
                      activeColor: Colors.blue,
                      onChanged: (bool value5) {
                        setState(() {
                          light5 = value5;
                        });
                      },
                    )
                  ],
                ),
                Divider(thickness: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Message',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Switch(
                      value: light6,
                      activeColor: Colors.blue,
                      onChanged: (bool value6) {
                        setState(() {
                          light6 = value6;
                        });
                      },
                    )
                  ],
                ),
                Divider(thickness: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Message Nudges',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Switch(
                      value: light7,
                      activeColor: Colors.blue,
                      onChanged: (bool value7) {
                        setState(() {
                          light7 = value7;
                        });
                      },
                    )
                  ],
                ),
                Divider(thickness: 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
