import 'package:coffeeui/coffee/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.asset("assets/image/image 3.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 500),
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          "Coffee so good,",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFFFFFFF)),
                        ),
                      ),
                      const Text(
                        "your taste buds",
                        style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      const Text(
                        "will love it.",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFFFFFFF)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "The best grain, the finest roast,the",
                        style:
                            TextStyle(color: Color(0XFFA9A9A9), fontSize: 16),
                      ),
                      const Text(
                        "powerful flavor.",
                        style:
                            TextStyle(color: Color(0XFFA9A9A9), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Page2(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0XFFC67C4E),
                          ),
                          child: const Center(
                              child: Text("Get Started",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
