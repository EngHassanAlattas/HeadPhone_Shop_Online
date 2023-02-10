// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import, implementation_imports, avoid_unnecessary_containers, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ubl/dashbroad.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 90, top: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xffFBCF6C),
                    ),
                    height: 210,
                    width: 210,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 0),
                    child: Container(
                      child: Column(
                        children: [
                          Image(
                              height: 500,
                              width: 390,
                              image: AssetImage("images/1.png"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xff292929),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(30),
                        child: Column(children: [
                          const Text(
                            "Let's Enjoy With",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            "Best Product",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffE3BA74),
                          ),
                          height: 50,
                          width: 110,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 11),
                                child: Text(
                                  "Let's Go",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ))
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dashbroad(),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
