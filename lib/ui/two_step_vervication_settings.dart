import 'package:finalamitproject/ui/twostepvr.dart';
import 'package:flutter/material.dart';

class TwoStepSettings extends StatefulWidget {
  const TwoStepSettings({super.key});

  @override
  State<TwoStepSettings> createState() => _TwoStepSettingsState();
}

class _TwoStepSettingsState extends State<TwoStepSettings> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Two-step verification',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFF6B7280)),
                    borderRadius: BorderRadius.circular(8))),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Secure your account with ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6B7280)),
                      ),
                      Text(
                        'two-step verification',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6B7280)),
                      ),
                    ],
                  ),
                  Switch(
                    value: light,
                    activeColor: Colors.blue,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ]),
          ),
          SizedBox(height: 32),
          Text(
            'Select a verification method',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8),
          Container(
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFF6B7280)),
                    borderRadius: BorderRadius.circular(8))),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Telephone number (SMS)',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_rounded))
                ]),
          ),
          SizedBox(height: 16),
          Text(
            'Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6B7280)),
          ),
          SizedBox(
            height: 280,
          ),
          Container(
            width: 350,
            height: 60,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF3366FF)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TwoStepVer(),
                    ),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ]),
      ),
    );
  }
}
