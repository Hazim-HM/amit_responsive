import 'package:finalamitproject/ui/searchresult.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 14,
        ),
        Container(
          width: 390,
          child: TextFormField(
            decoration: InputDecoration(
                icon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                hintText: "Type Something ...",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                enabled: true,
                prefixIcon:
                    InkWell(child: Image.asset('images/search-normal.png'))),
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 40,
          color: Color.fromARGB(255, 244, 244, 245),
          child: Row(children: [
            SizedBox(
              width: 24,
            ),
            Text(
              'Recent searches',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 107, 114, 128)),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Junior UI Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Junior UX Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Product Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Product Manger',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'UI/UX Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/clock.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Front-End Developer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/close-circle.png'))
            ],
          ),
        ),
        Container(
          height: 40,
          color: Color.fromARGB(255, 244, 244, 245),
          child: Row(children: [
            SizedBox(
              width: 24,
            ),
            Text(
              'Popular searches',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 107, 114, 128)),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/search-status.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'UI/UX Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SearchResultScreen(),
                            ),
                          );
                  }, icon: Image.asset('images/arrow-right.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/search-status.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Project Manager',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Image.asset('images/arrow-right.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/search-status.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Product Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Image.asset('images/arrow-right.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/search-status.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'UX Designer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Image.asset('images/arrow-right.png'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/search-status.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Front-End Developer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Image.asset('images/arrow-right.png'))
            ],
          ),
        )
      ])),
    ));
  }
}
