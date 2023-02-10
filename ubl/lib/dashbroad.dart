// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import, unused_import, implementation_imports, prefer_final_fields, annotate_overrides, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_local_variable

// ignore: unused_import
import 'dart:async';
import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ubl/card.dart';
import 'package:ubl/logo.dart';

class Dashbroad extends StatefulWidget {
  const Dashbroad({super.key});

  @override
  State<Dashbroad> createState() => _DashbroadState();
}

class _DashbroadState extends State<Dashbroad> {
  late final PageController pageController;
  ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  void initState() {
    pageController = PageController(initialPage: 10, viewportFraction: 0.94);

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBtmAppBr = false;
        setState(() {});
      } else {
        showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 45, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 248, 245, 245)),
                        child: Icon(
                          Icons.apps,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 248, 245, 245)),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 220),
                      child: Text(
                        " Let's Find \n Your Gadget",
                        style: TextStyle(
                            letterSpacing: 0,
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, 253, 252, 252)),
                            margin: EdgeInsets.only(left: 10),
                            height: 50,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                cursorHeight: 20,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.search,
                                      size: 30, color: Colors.black),
                                  hintText: "Seaech",
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 243, 242, 242)),
                            margin: EdgeInsets.only(left: 20),
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.tune_outlined,
                              size: 29,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 220,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      pageNo = index;
                      setState(() {});
                    },
                    itemBuilder: (_, index) {
                      return AnimatedBuilder(
                        animation: pageController,
                        builder: (ctx, child) {
                          return child!;
                        },
                        child: Container(
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: GestureDetector(
                                    child: shop(
                                      "images/2-removebg-preview.png",
                                      "SONY - WH-1000XM4",
                                      "Noise Cancelling Wireless Headhone",
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => card(),
                                          ));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.circle,
                          size: 12.0,
                          color: pageNo == index
                              ? Color.fromARGB(255, 10, 10, 10)
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Choose Brand",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Color.fromARGB(255, 152, 152, 152),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(children: [
                  SizedBox(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (
                            context,
                            index,
                          ) =>
                              Container(
                                child: Row(
                                  children: [
                                    logo("images/BEAT.png", "Beats"),
                                    logo("images/JBL.png", "JBL"),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(7),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xffF2F8F8),
                                          ),
                                          height: 110,
                                          width: 110,
                                          child: Column(
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                child: Image(
                                                    height: 60,
                                                    width: 60,
                                                    image: AssetImage(
                                                        "images/download__4_-removebg-preview (1).png")),
                                              ),
                                              Text("SONY",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    logo("images/BEAT.png", "Beats"),
                                    logo("images/BEAT.png", "Beats"),
                                  ],
                                ),
                              ))),
                  TabBar(tabs: [
                    Tab(
                      text: "Popular",
                    ),
                    Tab(
                      text: "Discount",
                    ),
                    Tab(
                      text: "Exclusive",
                    )
                  ]),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF2F8F8)),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, right: 30),
                                        child: Image(
                                            height: 140,
                                            image: AssetImage("images/h1.png")),
                                      ),
                                      Text(
                                        "SONY",
                                        style: TextStyle(
                                            color: const Color(0xff2A2525),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(10)),
                                    color: Colors.orange,
                                  ),
                                  margin: EdgeInsets.only(left: 120, top: 15),
                                  height: 25,
                                  width: 60,
                                  child: Center(
                                      child: Text(
                                    "15%OFF",
                                    style: TextStyle(
                                        color: const Color(0xff2A2525),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                            Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF2F8F8)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Image(
                                        height: 140,
                                        image: AssetImage("images/H2.png")),
                                  ),
                                  Text(
                                    "JBL",
                                    style: TextStyle(
                                        color: const Color(0xff2A2525),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF2F8F8)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5, right: 30),
                                    child: Image(
                                        height: 140,
                                        image: AssetImage("images/h1.png")),
                                  ),
                                  Text(
                                    "SONY",
                                    style: TextStyle(
                                        color: const Color(0xff2A2525),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF2F8F8)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5, right: 30),
                                    child: Image(
                                        height: 140,
                                        image: AssetImage("images/h1.png")),
                                  ),
                                  Text(
                                    "SONY",
                                    style: TextStyle(
                                        color: const Color(0xff2A2525),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ])
              ],
            )),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffF2F8F8),
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {},
          height: 50,
          buttonBackgroundColor: Color(0xffF2F8F8),
          color: const Color(0xffFBCF6C),
          items: [
            Icon(
              Icons.home_max_outlined,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class shop extends StatelessWidget {
  //const shop({
  // Key? key,
  // }) : super(key: key);
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final ImageUlr;
  // ignore: prefer_typing_uninitialized_variables
  final name;
  // ignore: prefer_typing_uninitialized_variables
  final subtitle;

  // ignore: use_key_in_widget_constructors
  const shop(this.ImageUlr, this.name, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Stack(children: [
            Container(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 24, bottom: 12),
                      height: 180,
                      width: 355,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFBCF6C)),
                      child: Container(
                          margin: EdgeInsets.only(right: 95, top: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 23),
                                child: Text(
                                  name,
                                  style: TextStyle(
                                      color: const Color(0xff2A2525),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 29,
                                ),
                                child: Text(
                                  subtitle,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 110, 83, 23),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20, right: 70),
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color(0xff242428)),
                                child: Center(
                                  child: Text(
                                    "Shop Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190),
                      child: Image(
                          height: 180, width: 180, image: AssetImage(ImageUlr)),
                    )
                  ]),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
