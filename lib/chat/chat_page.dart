import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/chat_buble.dart';
import '../widgets/constants (1).dart';
import '../widgets/message.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';

  final _controller = ScrollController();

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }

          return Scaffold(
            appBar: AppBar(
              actions: [
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
                              height: MediaQuery.of(context).size.height * 0.65,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: SingleChildScrollView(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                          Image.asset('images/briefcase.png'),
                                          Text(
                                            'Visit job post',
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
                                          Image.asset('images/note.png'),
                                          Text(
                                            'View my application',
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
                                          Image.asset('images/sms.png'),
                                          Text(
                                            'Mark as unread',
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
                                          Image.asset(
                                              'images/notification.png'),
                                          Text(
                                            'Mute',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
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
                                          Image.asset('images/import.png'),
                                          Text(
                                            'Archive',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
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
                                          Image.asset(
                                              'images/notification.png'),
                                          Text(
                                            'Mute',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
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
                                          Image.asset('images/trash.png'),
                                          Text(
                                            'Delete conversation',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF374151)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.arrow_forward_ios)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            );
                          });
                    },
                    icon: Image.asset('images/more.png'))
              ],
              elevation: 0,
              backgroundColor: Color(0xFFFFFFFF),
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Twitter Logo.png',
                    height: 50,
                  ),
                  Text(
                    'Twitter',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827)),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      reverse: true,
                      controller: _controller,
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return messagesList[index].id == email
                            ? ChatBuble(
                                message: messagesList[index],
                              )
                            : ChatBubleForFriend(message: messagesList[index]);
                      }),
                ),
                Row(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(
                              side: BorderSide(color: Color(0xFFD1D5DB)))),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/paperclip.png')),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextField(
                          controller: controller,
                          onSubmitted: (data) {
                            messages.add(
                              {
                                kMessage: data,
                                kCreatedAt: DateTime.now(),
                                'id': email
                              },
                            );
                            controller.clear();
                            _controller.animateTo(0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          decoration: InputDecoration(
                            hintText: 'Send Message',
                            suffixIcon: Icon(
                              Icons.send,
                              color: kPrimaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(
                              side: BorderSide(color: Color(0xFFD1D5DB)))),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/Microphone.png')),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Text('Loading...');
        }
      },
    );
  }
}
