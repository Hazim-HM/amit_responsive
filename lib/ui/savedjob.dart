import 'package:flutter/material.dart';

class SavedJobScreen extends StatefulWidget {
  const SavedJobScreen({super.key});

  @override
  State<SavedJobScreen> createState() => _SavedJobScreenState();
}

class _SavedJobScreenState extends State<SavedJobScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_outlined)),
              const SizedBox(
                width: 120,
              ),
              const Text(
                'Saved',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            height: 40,
            color: Color.fromARGB(255, 244, 244, 245),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 24,
              ),
              Text(
                '12 Job Saved',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 107, 114, 128)),
              )
            ]),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 18, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'images/spectrum.png',
                                scale: 1,
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'UI Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('Spectrum • Jakarta, Indonesia ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF374151)))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      child: Padding(
                                          padding: EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/directbox-notif.png'),
                                                  title: Text(
                                                    'Apply Job',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/export1.png'),
                                                  title: Text(
                                                    'Share via..',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/archive-minus-off.png'),
                                                  title: Text(
                                                    'Cancel saved',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              )
                                            ],
                                          )),
                                    );
                                  });
                            },
                            icon: Image.asset(
                              'images/more.png',
                              color: const Color.fromARGB(255, 17, 24, 39),
                            ))
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Row(children: [
                          Image.asset('images/clockcolored.png'),
                          Text(
                            'Be an early applicant',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF374151)),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ]),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 18, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'images/vk.png',
                                scale: 1,
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Senior UI Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('VK • Yogyakarta, Indonesia ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF374151)))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      child: Padding(
                                          padding: EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/directbox-notif.png'),
                                                  title: Text(
                                                    'Apply Job',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/export1.png'),
                                                  title: Text(
                                                    'Share via..',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/archive-minus-off.png'),
                                                  title: Text(
                                                    'Cancel saved',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              )
                                            ],
                                          )),
                                    );
                                  });
                            },
                            icon: Image.asset(
                              'images/more.png',
                              color: const Color.fromARGB(255, 17, 24, 39),
                            ))
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Row(children: [
                          Image.asset('images/clockcolored.png'),
                          Text(
                            'Be an early applicant',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF374151)),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ]),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 18, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'images/discord.png',
                                scale: 1,
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Senior UX Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('Discord • Jakarta, Indonesia ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF374151)))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      child: Padding(
                                          padding: EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/directbox-notif.png'),
                                                  title: Text(
                                                    'Apply Job',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/export1.png'),
                                                  title: Text(
                                                    'Share via..',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/archive-minus-off.png'),
                                                  title: Text(
                                                    'Cancel saved',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              )
                                            ],
                                          )),
                                    );
                                  });
                            },
                            icon: Image.asset(
                              'images/more.png',
                              color: const Color.fromARGB(255, 17, 24, 39),
                            ))
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Row(children: [
                          Image.asset('images/clockcolored.png'),
                          Text(
                            'Be an early applicant',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF374151)),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ]),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 18, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'images/invision.png',
                                scale: 1,
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Junior UI Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('Invision • Jakarta, Indonesia  ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF374151)))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      child: Padding(
                                          padding: EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/directbox-notif.png'),
                                                  title: Text(
                                                    'Apply Job',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/export1.png'),
                                                  title: Text(
                                                    'Share via..',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/archive-minus-off.png'),
                                                  title: Text(
                                                    'Cancel saved',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              )
                                            ],
                                          )),
                                    );
                                  });
                            },
                            icon: Image.asset(
                              'images/more.png',
                              color: const Color.fromARGB(255, 17, 24, 39),
                            ))
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Row(children: [
                          Image.asset('images/clockcolored.png'),
                          Text(
                            'Be an early applicant',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF374151)),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ]),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 18, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'images/Twitter Logo.png',
                                scale: 1,
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Senior UI Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text('Twitter • Jakarta, Indonesia',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF374151)))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.30,
                                      child: Padding(
                                          padding: EdgeInsets.all(24),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/directbox-notif.png'),
                                                  title: Text(
                                                    'Apply Job',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/export1.png'),
                                                  title: Text(
                                                    'Share via..',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                      'images/archive-minus-off.png'),
                                                  title: Text(
                                                    'Cancel saved',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .arrow_forward_ios)),
                                                ),
                                                decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                              )
                                            ],
                                          )),
                                    );
                                  });
                            },
                            icon: Image.asset(
                              'images/more.png',
                              color: const Color.fromARGB(255, 17, 24, 39),
                            ))
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posted 2 days ago',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Row(children: [
                          Image.asset('images/clockcolored.png'),
                          Text(
                            'Be an early applicant',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF374151)),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ]),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}
