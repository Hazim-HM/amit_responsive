import 'package:finalamitproject/ui/Messageshomescreen.dart';
import 'package:finalamitproject/ui/appliedscreen.dart';
import 'package:finalamitproject/ui/homscreen.dart';
import 'package:finalamitproject/ui/profile.dart';
import 'package:finalamitproject/ui/savedjob.dart';
import 'package:flutter/material.dart';

class layoutScreens extends StatefulWidget {
  const layoutScreens({super.key});

  @override
  State<layoutScreens> createState() => _layoutScreensState();
}

class _layoutScreensState extends State<layoutScreens> {
  int index = 0;

  List<Widget> screens = [Homepage(),Messages(),AppliedAndRejectScreen(),SavedJobScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xFF3366FF),
        unselectedItemColor: Colors.grey,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        currentIndex: index,
        items:  [
          BottomNavigationBarItem(icon: Image.asset('images/home.png'), label: "Home"),
          BottomNavigationBarItem(icon: Image.asset('images/message_navBar.png'), label: "Message"),
          BottomNavigationBarItem(icon: Image.asset('images/briefcase_navbar.png'), label: "Applied"),
          BottomNavigationBarItem(icon: Image.asset('images/archive-minus-navbar.png'), label: "Saved"),
          BottomNavigationBarItem(icon: Image.asset('images/frame.png'), label: "Profile"),


        ],
      ),
      body: screens[index],
    );
    
  }
}
