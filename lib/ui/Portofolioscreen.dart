import 'package:finalamitproject/ui/portfolio_completed.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                IconButton(
                    onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PortofolieCompleted(),
                            ),
                          );}, icon: Icon(Icons.arrow_back_outlined)),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Portfolio',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 36),
            Text(
              'Add portfolio here',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      side: BorderSide(color: Color(0xFF3366FF))),
                  color: Color(0xFFECF2FF)),
              width: 420,
              height: 220,
              child: Column(children: [
                SizedBox(
                  height: 16,
                ),
                Image.asset('images/document-upload.png'),
                SizedBox(
                  height: 16,
                ),
                SizedBox(height: 8),
                Text(
                  'Upload your other file',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Max. file size 10 MB',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7280)),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xFF3366FF)),
                                  borderRadius: BorderRadius.circular(1000))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFD6E4FF))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/export.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add file',
                            style: TextStyle(
                                color: Color(0xFF3366FF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                )
              ]),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 72,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFD1D5DB)),
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset('images/PdfLogo.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'CV.pdf 300KB',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B7280)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/edit-2.png')),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/close-circle.png'))
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
