import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/ui/Jobdetails_descr.dart';
import 'package:finalamitproject/ui/search.dart';
import 'package:flutter/material.dart';

import 'notificationscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    MainCubit.get(context).getSuggestJobs();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi,${MainCubit.get(context).user!.user!.name}👋",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8),
                      const Text(
                        'Create a better future for yourself here',
                        style: TextStyle(
                            color: Color.fromARGB(255, 107, 114, 128)),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NotificatoinScreen(),
                            ),
                          );},
                      icon: Image.asset('images/notification.png')),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              InkWell(
                  onTap: () {  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SearchScreen(),
                            ),
                          );},
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search....",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        enabled: true,
                        prefixIcon: InkWell(
                            child: Image.asset('images/search-normal.png'))),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested Job",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              Container(
                width: 350,
                height: 220,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Color.fromARGB(255, 9, 26, 122),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 18, bottom: 18, right: 16, left: 16),
                        child: SingleChildScrollView(
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          'images/zoom.png',
                                          scale: 1,
                                        ),
                                      ),
                                      SizedBox(width: 22),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            MainCubit.get(context)
                                                .suggestJob[index]
                                                .name
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                              MainCubit.get(context)
                                                  .suggestJob[index]
                                                  .compName
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 156, 163, 175)))
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          'images/archive-minus.png'))
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Container(
                                padding: EdgeInsets.only(top: 6),
                                width: 87,
                                height: 30,
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color.fromARGB(255, 43, 58, 141)),
                                child: Text(
                                  MainCubit.get(context)
                                      .suggestJob[index]
                                      .jobTimeType
                                      .toString(),
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.only(top: 6),
                                width: 87,
                                height: 30,
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color.fromARGB(255, 43, 58, 141)),
                                child: Text(
                                  MainCubit.get(context)
                                      .suggestJob[index]
                                      .jobLevel
                                      .toString(),
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.only(top: 6),
                                width: 90,
                                height: 40,
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color.fromARGB(255, 43, 58, 141)),
                                child: Text(
                                  MainCubit.get(context)
                                      .suggestJob[index]
                                      .jobType
                                      .toString(),
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    MainCubit.get(context)
                                            .suggestJob[index]
                                            .salary
                                            .toString() +
                                        "/Month",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                  SizedBox(width: 90),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Apply now'),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 51, 102, 255)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25)))),
                                  ),
                                ]),
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Job",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 220,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 18, bottom: 18, right: 16, left: 16),
                        child: SingleChildScrollView(
                          child: Column(children: [
                            InkWell(onTap: () {
                               Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => JobDescribtionScreen(),
                            ),
                          );
                            },
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                          width: 40,
                                          height: 40,
                                          child: Image.asset(
                                            'images/zoom.png',
                                            scale: 1,
                                          ),
                                        ),
                                        SizedBox(width: 22),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              MainCubit.get(context)
                                                  .suggestJob[index]
                                                  .name
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                                MainCubit.get(context)
                                                    .suggestJob[index]
                                                    .compName
                                                    .toString(),
                                                style: TextStyle())
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'images/archive-minus.png',
                                          color: Color.fromARGB(255, 17, 24, 39),
                                        ))
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 6),
                                    width: 87,
                                    height: 30,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        color:
                                            Color.fromARGB(255, 43, 58, 141)),
                                    child: Text(
                                      MainCubit.get(context)
                                          .suggestJob[index]
                                          .jobTimeType
                                          .toString(),
                                      style: TextStyle(fontSize: 11),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    padding: EdgeInsets.only(top: 6),
                                    width: 87,
                                    height: 30,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        color:
                                            Color.fromARGB(255, 43, 58, 141)),
                                    child: Text(
                                      MainCubit.get(context)
                                          .suggestJob[index]
                                          .jobLevel
                                          .toString(),
                                      style: TextStyle(fontSize: 11),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    padding: EdgeInsets.only(top: 6),
                                    width: 87,
                                    height: 30,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        color:
                                            Color.fromARGB(255, 43, 58, 141)),
                                    child: Text(
                                      MainCubit.get(context)
                                          .suggestJob[index]
                                          .jobType
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ]),
                                Text(
                                  MainCubit.get(context)
                                          .suggestJob[index]
                                          .salary
                                          .toString() +
                                      '/Month',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
