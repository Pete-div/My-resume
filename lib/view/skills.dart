import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/about_me.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Skills'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blueGrey),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text('My stacks and status are as follows:',style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.w300),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Flutter -------  85%',
                                style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 30,),
                                 Text('Dart -------  85%',
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                  SizedBox(
                                  height: 30,
                                ),
                                  Text('html -------  50%',
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                  SizedBox(
                                  height: 30,
                                ),
                                   Text('javaScript -------  30%',
                                   style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                  SizedBox(
                                  height: 30,
                                ),
                                     Text(
                                  'Team-Work -------  94%',
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                 SizedBox(
                                  height: 30,
                                ),
                                 

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
