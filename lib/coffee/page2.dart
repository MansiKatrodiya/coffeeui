import 'package:coffeeui/coffee/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController searchController = TextEditingController();

  int selectedName = 0;

  List coffeeList = [
    {
      "pik": "assets/image/1.png",
      "name": "Cappuccino",
      "text": "with Chocolate",
      "price": "\$ 4.53"
    },
    {
      "pik": "assets/image/2.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pik": "assets/image/3.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pik": "assets/image/4.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
  ];

  List size =[
    {
      "name":"Cappuccino"
    },
    {
      "name":"Machiato"
    },
    {
      "name":"Latte"
    },
    {
      "name":"Americano"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0XFF131313),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 250),
                                    child: Text("Location",
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color(0XFFB7B7B7))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:2),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Bilzen,Tanjungbalai",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        const Icon(
                                          Icons.expand_more,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        const SizedBox(width: 60),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height/15,
                                          width: MediaQuery.of(context).size.width/8,
                                          child: Image.asset(
                                            "assets/image/profile.png",
                                            width: 50,
                                            height: 50,
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
                        const SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(

                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 17),
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TextFormField(
                                      controller: searchController,style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.search_sharp,
                                              color: Colors.white),
                                          hintText: "search",
                                          fillColor: const Color(0XFF313131),
                                          hintStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Image.asset(
                                        "assets/image/Frame 4.jpg",
                                        height: 55,
                                        width: 55,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    height:MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      child: Image.asset("assets/image/stack_pic.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                child: ListView.builder(itemCount: size.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          selectedName = index;
                          debugPrint("index$index");
                          debugPrint("selectedName$selectedName");
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width /4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: selectedName == index ?Color(0XFFC67C4E):Colors.white,
                             ),
                          child:  Center(
                              child: Text("${size[index]["name"]}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    );
                  },),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemCount: coffeeList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 270),
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Page3()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(children: [
                                Container(
                                  width: 180,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "${coffeeList[i]["pik"]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      color:Color(0XFF000000)
                                    ),
                                  child: const Row(
                                    children: [
                                      SizedBox(width:15),
                                      Icon(Icons.star,color: Color(0XFFFBBE21),size: 15),
                                      Text("4.8",style: TextStyle(color: Colors.white,fontSize: 15)),
                                    ],
                                  ),
                                ),
                              ]),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "${coffeeList[i]["name"]}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "${coffeeList[i]["text"]}",
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "${coffeeList[i]["price"]}",
                                      style: const TextStyle(
                                          color: Color(0XFF2F4B4E),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFFC67C4E)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
