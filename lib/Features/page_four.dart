import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/page_five.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

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
                    "Sing In",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    "Hi ! Welcome back, you have been missed.",
                    style: TextStyle(fontSize: 15),
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
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text("Forgot Password?"))
                    ],
                  ),
                ),
                SizedBox(
                  width: 390,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sing in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8E7AB5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "_____Or sign in with_____",
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
                        "Don’t have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PageFive();
                            }));
                          },
                          child: Text(
                            "Sing Up",
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
