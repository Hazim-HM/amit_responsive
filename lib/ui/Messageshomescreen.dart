import 'package:flutter/material.dart';

import '../chat/chat_page.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: true,
          title: Text(
            'Messages',
            style: TextStyle(
                color: Color(0xFF111827),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          )),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search messages....',
                      prefixIcon: Image.asset('images/search-normal.png'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                decoration: ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(color: Color(0xFFD1D5DB)))),
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: SingleChildScrollView(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Message filters',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF111827)),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 5),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              side: BorderSide(
                                                  color: Color(0xFFD1D5DB)))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Unread',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  Icon(Icons.arrow_forward_ios))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 5),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              side: BorderSide(
                                                  color: Color(0xFFD1D5DB)))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Spam',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  Icon(Icons.arrow_forward_ios))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 5),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              side: BorderSide(
                                                  color: Color(0xFFD1D5DB)))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Archived',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  Icon(Icons.arrow_forward_ios))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    )
                                  ],
                                )),
                              ),
                            );
                          });
                    },
                    icon: Image.asset('images/setting-4.png')),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatPage(),
                      ),
                    );
                  },
                  child: Column(
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
                      const Text('You: What about the interview stage?',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6B7280))),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Text('12/8')
          ]),
        ]),
      )),
    ));
  }
}
