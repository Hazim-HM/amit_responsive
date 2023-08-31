import 'package:flutter/material.dart';

class NotificatoinScreen extends StatefulWidget {
  const NotificatoinScreen({super.key});

  @override
  State<NotificatoinScreen> createState() => _NotificatoinScreenState();
}

class _NotificatoinScreenState extends State<NotificatoinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
            const SizedBox(
              width: 120,
            ),
            const Text(
              'Notification',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          height: 40,
          color: Color.fromARGB(255, 244, 244, 245),
          child: Row(children: [
            SizedBox(
              width: 24,
            ),
            Text(
              'New',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 107, 114, 128)),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'images/Dana Logo.png',
                    scale: 1,
                  ),
                ),
                const SizedBox(width: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dana ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Posted new design jobs',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                Image.asset('images/Ellipse 12.png'),
                Text('10.00AM'),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Divider(
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'images/Shoope Logo.png',
                    scale: 1,
                  ),
                ),
                const SizedBox(width: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Shoope ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Posted new design jobs',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                Image.asset('images/Ellipse 12.png'),
                Text('10.00AM'),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Divider(
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'images/Slack Logo.png',
                    scale: 1,
                  ),
                ),
                const SizedBox(width: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Slack',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Posted new design jobs',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                Image.asset('images/Ellipse 12.png'),
                Text('10.00AM'),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Divider(
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'images/Facebook Logo.png',
                    scale: 1,
                  ),
                ),
                const SizedBox(width: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Facebook ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Posted new design jobs',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                Image.asset('images/Ellipse 12.png'),
                Text('10.00AM'),
              ],
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Divider(
            thickness: 2,
          ),
        ),
        const SizedBox(
          height: 39,
        ),
        Container(
          height: 40,
          color: Color.fromARGB(255, 244, 244, 245),
          child: Row(children: [
            SizedBox(
              width: 24,
            ),
            Text(
              'Yesterday',
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 214, 228, 255),
                      child: Image.asset(
                        'images/sms.png',
                        color: Color.fromARGB(255, 78, 122, 255),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email setup successful ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('images/Ellipse 12.png'),
                            Text('10.00AM'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
              ]),
              const Text(
                  'Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7280))),
            ],
          ),
        ),
      ]),
    ));
  }
}
