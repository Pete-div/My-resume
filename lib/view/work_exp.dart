import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/about_me.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Work Experience'),
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
                        const EdgeInsets.only(left: 2.0, right: 1, top: 12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text('Frontend App developer Freelance – Remote',
                            style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'February 2021 to July 2022 ',
                            style: GoogleFonts.inter(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '• I was majorly into building different UI,built different UI with user interaction. \n •I built UI for Rider App, Car Transportation App,House rental App, Transaction-Keeper App. \n• Built a complete Shop App with firebase  as the backend',
                              style: GoogleFonts.inika(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                              'Application Developer techleeds – abuja (Intern)',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.bold) ),
                          Text(
                            'February 2021 to July 2022 ',
                            style: GoogleFonts.inter(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '• Worked more with senior developer, built more Screens for Road solution App. \n• Consumed API on a house solution app',
                              style: GoogleFonts.inika(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
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
