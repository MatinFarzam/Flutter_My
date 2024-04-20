import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/page_three.dart';
import 'package:flutter_application_1/Features/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/Back.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 350),
              child: Image.asset("assets/images/p1.png"),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PageThree();
                            }));
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                color: Color(0xff6948AA), fontSize: 18),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 410),
                  child: Text(
                    "Digital Transactions",
                    style: TextStyle(
                        color: Color(0xff694C9F),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Carrying Out Financial Transactions With The Best Security",
                      style: TextStyle(color: Color(0xff3E3B3B), fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff8E7AB5)),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffC6C5C5)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffC6C5C5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 45, right: 10),
        child: FloatingActionButton(
          backgroundColor: Color(0xff8E7AB5),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PageTwo();
            }));
          },
          shape: CircleBorder(),
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
