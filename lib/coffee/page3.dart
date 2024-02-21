import 'package:coffeeui/coffee/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  int selectedName = 0;

  List size =[
    {
    "name":"S"
  },
    {
    "name":"M"
  },
    {
    "name":"L"
  },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Spacer(),
            Text(
              "Detail",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 30,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/image/1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Cappucino",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "with Chocolate",
                  style: TextStyle(fontSize: 15, color: Color(0XFF9B9B9B)),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Icon(Icons.star, size: 30, color: Color(0XFFFBBE21)),
                const SizedBox(width: 5),
                const Text(
                  "4.8",
                  style: TextStyle(
                      color: Color(0XFF2F2D2C),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                const Text(
                  "(230)",
                  style: TextStyle(fontSize: 15, color: Color(0XFF808080)),
                ),
                const Spacer(),
                Image.asset(
                  "assets/image/Frame 19.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "assets/image/Frame 20.png",
                  height: 50,
                  width: 50,
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 250,
              width: MediaQuery.of(context).size.width / 1.1,
              color: const Color(0XFFEAEAEA),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(right: 60),
              child: Text("A cappuccino is an approximately 150 ml (5\n"
                  "oz) beverage, with 25 ml of espresso coffee"),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text("and 85ml of fresh milk the fo.."),
                Text(
                  "Read More",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0XFFC67C4E)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            Container(
              height: 50,
              child: ListView.builder(itemCount: size.length,

                scrollDirection: Axis.horizontal,physics: NeverScrollableScrollPhysics(),

                itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: () {
                      selectedName = index;
                      debugPrint("index$index");
                      debugPrint("selectedName$selectedName");
                      setState(() {});
                    },
                    child: Container(
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: selectedName == index ?Color(0XFFFFF5EE):Colors.white,
                                  border: Border.all(color: Color(0XFFC67C4E))),
                              child:  Center(
                                  child: Text("${size[index]["name"]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))),
                            ),
                  ),
                );
              },),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 35, top: 10),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Text("Price",
                            style: TextStyle(
                              color: Color(0XFF9B9B9B),
                              fontSize: 20,
                            )),
                        SizedBox(height: 5),
                        Text("\$ 4.53",
                            style: TextStyle(
                                color: Color(0XFFC67C4E),
                                fontSize: 20,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, bottom: 210),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page4()),
                          );
                        },
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0XFFC67C4E),
                          ),
                          child: const Center(
                              child: Text("Buy Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
