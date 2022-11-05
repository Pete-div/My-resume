import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color.dart';
import '../view/about_me.dart';

class ListItems extends StatelessWidget {
  const ListItems({required this.text, required this.onpressed,required this.icon});

  final VoidCallback? onpressed;
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onpressed,
          child: ClipRRect(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1).withAlpha(13),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 40,
                    child: IconButton(
                      onPressed: onpressed,
                      icon: icon,
                      iconSize: 34,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: GoogleFonts.inder(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
