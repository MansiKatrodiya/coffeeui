import 'package:coffeeui/coffee/page5.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Order",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFF2F2F2)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFC67C4E)),
                              child: const Center(
                                  child: Text("Deliver",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25))),
                            ),
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            "Pick Up",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 25),
                      Text("Delivery Address",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      SizedBox(width: 25),
                      Text(
                        "Jl. Kpg Sutoyo",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 25),
                      Text(
                        "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                        style:
                            TextStyle(color: Color(0XFF808080), fontSize: 17),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0XFFDEDEDE))),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Icon(Icons.edit_note),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Edit Address")
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: const Color(0XFFDEDEDE))),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Icon(Icons.feed_outlined),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Add Note")
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height / 300,
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: const Color(0XFFEAEAEA),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Image.asset(
                        "assets/image/Rectangle 1706 (1).jpg",
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        children: [
                          Text(
                            "Cappuccino",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "with Chocolate",
                              style: TextStyle(
                                  color: Color(0XFF9B9B9B), fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          onPressed: () {
                            if (counter > 0) {
                              counter--;
                            }
                            setState(() {});
                          },
                          child: const Icon(Icons.remove, color: Colors.black),
                        ),
                      ),
                      const Spacer(),
                      Text("${counter}", style: const TextStyle(fontSize: 30)),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: incrementCounter,
                            tooltip: "Increment",
                            child: const Icon(Icons.add, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/6.png",
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "1 Discount is applied",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Payment Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          "\$ 4.53",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 3),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Delivery Fee",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          "\$ 2.0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 400,
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: const Color(0XFFEAEAEA),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          "\$ 5.53",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/image/moneys.png",
                          height: 35,
                          width: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black12),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0XFFC67C4E)),
                                child: const Center(
                                  child: Text("Cash",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "\$ 5.53",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 24,
                            width: MediaQuery.of(context).size.width / 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0XFF808080)),
                            child: const Icon(Icons.more_horiz,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page5()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0XFFC67C4E)),
                      child: const Center(
                          child: Text("Order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
