import 'package:finalamitproject/ui/show_notfound_result.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  static List<String> list = [r'$5K-$10K', r'$10K-$15K', r'$15K-$20K'];
  static List<String> Type = ["Remote", 'onsite'];
  static List<String> time = ['Fulltime', 'Parttime'];
  static List<String> datetime = ['Postdate', 'one week', 'one month', 'New'];

  static List<String> Experinece = [
    'No Experince',
    '1 Year',
    '2~5 Years',
    'morethan 5 Years'
  ];

  String dropdownValue = list.first;
  String dropdownValue1 = Type.first;
  String dropdownValue2 = time.first;
  String dropdownValue3 = Experinece.first;
  String dropdownValue4 = datetime.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: 390,
            child: TextFormField(
              decoration: InputDecoration(
                  icon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  hintText: "UI/UX Designer",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  enabled: true,
                  prefixIcon:
                      InkWell(child: Image.asset('images/search-normal.png'))),
            ),
          ),
          SizedBox(height: 28),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
                              height: MediaQuery.of(context).size.height * 0.85,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    Icons.arrow_back_outlined)),
                                            Text(
                                              'Set Filter',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Reset',
                                                  style: TextStyle(
                                                      color: Color(0xFF3366FF),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ))
                                          ],
                                        ),
                                        Text(
                                          'Job Tittle',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 156, 163, 175)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              prefixIcon: Image.asset(
                                                  'images/briefcase.png'),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        ),
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 156, 163, 175)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              prefixIcon: Image.asset(
                                                  'images/location.png'),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Salary',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 156, 163, 175)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 160,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xFF6B7280)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100))),
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            elevation: 16,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF111827)),
                                            onChanged: (String? value) {
                                              setState(() {
                                                dropdownValue = value!;
                                              });
                                            },
                                            items: list
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        Text(
                                          'Jobtype',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 156, 163, 175)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF3366FF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFD6E4FF)),
                                              child: Text(
                                                'Fulltime',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF3366FF)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF3366FF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFD6E4FF)),
                                              child: Text(
                                                'Remote',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF3366FF)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF3366FF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFD6E4FF)),
                                              child: Text(
                                                'Contract',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF3366FF)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF6B7280)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFFFFFFF)),
                                              child: Text(
                                                'Part Time',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF6B7280)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF6B7280)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFFFFFFF)),
                                              child: Text(
                                                'Onsite',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF6B7280)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 6),
                                              width: 87,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xFF6B7280)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  color: Color(0xFFFFFFFF)),
                                              child: Text(
                                                'Internship',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xFF6B7280)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 150,
                                        ),
                                        Container(
                                          // padding: EdgeInsets.only(left: 15),
                                          width: 350,
                                          height: 50,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      const MaterialStatePropertyAll(
                                                          Color.fromARGB(255,
                                                              51, 102, 255)),
                                                  shape: MaterialStatePropertyAll(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25)))),
                                              onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ShowNotFoundSearch(),
                            ),
                          );},
                                              child: const Text('Apply now')),
                                        ),
                                      ]),
                                ),
                              ),
                            );
                          });
                    },
                    icon: Image.asset('images/setting-4.png')),
                SizedBox(width: 16),
                Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: Color(0xFF091A7A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: DropdownButton<String>(
                    value: dropdownValue1,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    onChanged: (String? value1) {
                      setState(() {
                        dropdownValue1 = value1!;
                      });
                    },
                    items: Type.map<DropdownMenuItem<String>>((String value1) {
                      return DropdownMenuItem<String>(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: Color(0xFF091A7A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: DropdownButton<String>(
                    value: dropdownValue2,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    onChanged: (String? value2) {
                      setState(() {
                        dropdownValue2 = value2!;
                      });
                    },
                    items: time.map<DropdownMenuItem<String>>((String value2) {
                      return DropdownMenuItem<String>(
                        value: value2,
                        child: Text(value2),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 40,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFF6B7280)),
                          borderRadius: BorderRadius.circular(100))),
                  child: DropdownButton<String>(
                    value: dropdownValue4,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF111827)),
                    onChanged: (String? value4) {
                      setState(() {
                        dropdownValue4 = value4!;
                      });
                    },
                    items:
                        datetime.map<DropdownMenuItem<String>>((String value4) {
                      return DropdownMenuItem<String>(
                        value: value4,
                        child: Text(value4),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 16),
                Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: Color(0xFF091A7A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: DropdownButton<String>(
                    value: dropdownValue3,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                    onChanged: (String? value3) {
                      setState(() {
                        dropdownValue3 = value3!;
                      });
                    },
                    items: Experinece.map<DropdownMenuItem<String>>(
                        (String value3) {
                      return DropdownMenuItem<String>(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 40,
            color: Color.fromARGB(255, 244, 244, 245),
            child: Row(children: [
              SizedBox(
                width: 24,
              ),
              Text(
                'Featuring 120+ jobs',
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
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Twitter • Jakarta, Indonesia ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$10K',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
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
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Spectrum • Jakarta, Indonesia  ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$10K',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
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
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senior UI Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('VK • Yogyakarta, Indonesia ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$12K',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
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
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Junior UI Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Invision • Jakarta, Indonesia  ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$9K',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
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
                          'images/zoom.png',
                          scale: 1,
                        ),
                      ),
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Junior UI Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Behance • Surakarta, Indonesia ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$12K',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
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
                          'images/zoom.png',
                          scale: 1,
                        ),
                      ),
                      SizedBox(width: 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Twitter • Jakarta, Indonesia ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF374151)))
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    width: 87,
                    height: 30,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Fulltime',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
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
                            borderRadius: BorderRadius.circular(25)),
                        color: Color(0xFFD6E4FF)),
                    child: Text(
                      'Remote',
                      style: TextStyle(fontSize: 11, color: Color(0xFF3366FF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 5),
                ]),
                Row(
                  children: [
                    Text(
                      r'$10',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E8E18)),
                    ),
                    Text(
                      '/Month',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      )),
    ));
  }
}
