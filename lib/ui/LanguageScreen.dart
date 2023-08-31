import 'package:flutter/material.dart';

class LanguageEditProfileScreen extends StatefulWidget {
  const LanguageEditProfileScreen({super.key});

  @override
  State<LanguageEditProfileScreen> createState() =>
      _LanguageEditProfileScreenState();
}

class _LanguageEditProfileScreenState extends State<LanguageEditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
              SizedBox(
                width: 100,
              ),
              Text(
                'Portfolio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/England.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'English',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Indonesia.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Indonesia',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Saudi Arabia.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Arabic',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/China.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Chinese',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Netherlands.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Dutch',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/France.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'French',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Germany.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'German',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Japan.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Japanese',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/South Korea.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Korean',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('images/Portugal.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Portuguese',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          )
        ]),
      )),
    ));
  }
}
