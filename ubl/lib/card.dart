import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 207, 232),
      body: Column(
        children: [
          Stack(children: [
            Container(
              child: Image(
                  height: 640, width: 380, image: AssetImage("images/H3.png")),
            ),
            Container(
              margin: EdgeInsets.only(left: 210, top: 188),
              child: DottedBorder(
                color: Color.fromARGB(255, 255, 253, 230),
                borderType: BorderType.RRect,
                strokeWidth: 4,

                /// 6 pixel wide dash, 3 pixel wide space, 2 pixel wide dash, 3 pixel wide space, repeat
                dashPattern: [28, 17, 6, 0],
                radius: Radius.circular(12),
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          Color.fromARGB(255, 224, 238, 242).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color.fromARGB(255, 255, 253, 230), width: 4),
                    ),
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF2F8F8)),
                height: 120,
                width: 300,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "JBL TUNE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Style 700BT",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "\$90.5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image(
                    height: 140,
                    width: 120,
                    image: AssetImage("images/H2.png")),
              )
            ]),
          )
        ],
      ),
    );
  }
}
