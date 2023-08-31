import 'package:flutter/material.dart';

class LanguagePicker extends StatefulWidget {
  const LanguagePicker({super.key});

  @override
  State<LanguagePicker> createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Language',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF111827)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/England.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'usa',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Indonesia.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Indonesia',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'indo',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Saudi Arabia.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Arabic',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Ksa',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/China.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Chinese',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'China',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Netherlands.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Dutch',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'nether',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/France.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'French',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Fra',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Germany.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Germany',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Ger',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Japan.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Japanese',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Jap',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/South Korea.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Korean',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Kor',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/Portugal.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Portuguese',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Radio(
                      value: 'Port',
                      groupValue: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      })
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
