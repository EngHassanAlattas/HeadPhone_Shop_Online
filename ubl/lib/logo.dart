// ignore_for_file: unnecessary_import, prefer_typing_uninitialized_variables, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  //const logo({
  //  Key? key,
  //}) : super(key: key);

  final logoUrl;
  final subtitle;
  logo(this.logoUrl, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF2F8F8),
          ),
          height: 110,
          width: 110,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(height: 40, width: 40, image: AssetImage(logoUrl)),
              ),
              Text(subtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
