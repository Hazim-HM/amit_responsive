import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileCompleted extends StatefulWidget {
  const ProfileCompleted({super.key});

  @override
  State<ProfileCompleted> createState() => _ProfileCompletedState();
}

class _ProfileCompletedState extends State<ProfileCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'Complete Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                footer: Text(
                  "4/4 Completed",
                  style: TextStyle(
                      color: Color(0xFF3366FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                radius: 45.0,
                lineWidth: 7.0,
                percent: 1,
                center: Text(
                  "100%",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3366FF)),
                ),
                progressColor: Color(0xFF3366FF),
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                'Complete your profile before applying for a job',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6B7280)),
              ),
              SizedBox(
                height: 34,
              ),
              Container(
                alignment: Alignment.center,
                width: 350,
                height: 85,
                decoration: ShapeDecoration(
                    color: Color(0xFFE0EBFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF84A9FF)),
                        borderRadius: BorderRadius.circular(8))),
                child: ListTile(
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    title: Text(
                      'Personal Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                        'Full name, email, phone number, and your address',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                    leading: Image.asset(
                      'images/tick-circle.png',
                    )),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                alignment: Alignment.center,
                width: 350,
                height: 85,
                decoration: ShapeDecoration(
                    color: Color(0xFFE0EBFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF84A9FF)),
                        borderRadius: BorderRadius.circular(8))),
                child: ListTile(
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    title: Text(
                      'Education',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                        'Enter your educational history to be considered by the recruiter',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                    leading: Image.asset(
                      'images/tick-circle.png',
                    )),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                alignment: Alignment.center,
                width: 350,
                height: 85,
                decoration: ShapeDecoration(
                    color: Color(0xFFE0EBFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF84A9FF)),
                        borderRadius: BorderRadius.circular(8))),
                child: ListTile(
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    title: Text(
                      'Experience',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                        'Enter your work experience to be considered by the recruiter',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                    leading: Image.asset(
                      'images/tick-circle.png',
                    )),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                alignment: Alignment.center,
                width: 350,
                height: 85,
                decoration: ShapeDecoration(
                    color: Color(0xFFE0EBFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF84A9FF)),
                        borderRadius: BorderRadius.circular(8))),
                child: ListTile(
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                    title: Text(
                      'Portfolio',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                        'Create your portfolio. Applying for various types of jobs is easier.',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6B7280))),
                    leading: Image.asset(
                      'images/tick-circle.png',
                    )),
              ),
            ],
          ),
        ));
  }
}
