import 'package:flutter/material.dart';

import '../utils/color.dart';

class SocialIcons extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onpressed;
  SocialIcons({required this.icon, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: icon,
        onPressed: onpressed,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1).withAlpha(13),
            spreadRadius: .5,
            blurRadius: .5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
