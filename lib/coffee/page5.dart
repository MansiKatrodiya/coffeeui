import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.asset("assets/image/Delivery.jpg"),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top:35),
                  child: Container(
                    height:MediaQuery.of(context).size.height/16,
                    width: MediaQuery.of(context).size.width/8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 340, top:35),
                  child: Container(
                    height:MediaQuery.of(context).size.height/16,
                    width: MediaQuery.of(context).size.width/8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: const Icon(Icons.location_searching_outlined),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration( borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
        ),
        color: Colors.white
        ),
        height:MediaQuery.of(context).size.height/2.9,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [
            const Text(
              "10 minutes left",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Text(
                  "Delivery to",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Jl.Kpg Sutoyo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/5,
                    height: MediaQuery.of(context).size.height/140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF36C07E)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/5,
                    height: MediaQuery.of(context).size.height/140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF36C07E)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/5,
                    height: MediaQuery.of(context).size.height/140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF36C07E)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/5,
                    height: MediaQuery.of(context).size.height/140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFDFDFDF)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
             height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    "assets/image/Frame 3179.png",
                    height: 70,
                    width: 70,
                  ),
                  const Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Delivered your order",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "We deliver your goods to you in \n"
                          "the shortes possible time.",
                          style: TextStyle(color: Color(0XFF808080)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Image.asset(
                    "assets/image/7.png",
                    height: 60,
                    width: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Johan Hawn",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Personal Courier",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey)),
                      child: const Icon(Icons.call,color: Colors.grey,size:30),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
