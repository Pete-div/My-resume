import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About_Me extends StatelessWidget {
  final String text1;
  final Widget child;

  About_Me({required this.text1, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            radius: 16,
            child: child,
            foregroundColor: Colors.blueGrey,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text1,
          style: GoogleFonts.inter(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
