import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/page_four.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Text(
                    "Sing Up",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    "Create your new account",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 188,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Color(0xff838383)),
                                ),
                                hintText: 'Name'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 188,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Color(0xff838383)),
                                ),
                                hintText: 'Last Name'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Color(0xff838383)),
                          ),
                          hintText: 'Email'),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color(0xff838383)),
                        ),
                        hintText: 'Password'),
                  ),
                ),
                SizedBox(
                  width: 390,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sing Up",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8E7AB5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "_____Or sign up with_____",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.5),
                        child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/Google.png")),
                      ),
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/images/Link.png")),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.5),
                        child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/Apple.png")),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PageFour();
                            }));
                          },
                          child: Text(
                            "Sing In",
                            style: TextStyle(fontSize: 15),
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
