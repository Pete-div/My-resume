import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/about_me.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About me'),
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
                          About_Me(
                            child: FaIcon(
                              FontAwesomeIcons.idBadge,
                              size: 20,
                            ),
                            text1: 'Otebiyi Gbenga Peter',
                          ),
                          About_Me(
                            child: FaIcon(
                              FontAwesomeIcons.phone,
                              size: 20,
                            ),
                            text1: '09030604338 / 07041744207',
                          ),
                          About_Me(
                            child: FaIcon(
                              FontAwesomeIcons.locationPin,
                              size: 20,
                            ),
                            text1: 'Abule-Egba, Lagos',
                          ),
                          About_Me(
                            child: FaIcon(
                              FontAwesomeIcons.envelopeOpenText,
                              size: 20,
                            ),
                            text1: 'petecomg02@gmail.com',
                          ),
                          About_Me(
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                size: 20,
                              ),
                              text1: 'https://github.com/Pete-div'),
                          About_Me(
                            child: FaIcon(
                              FontAwesomeIcons.linkedin,
                              size: 20,
                            ),
                            text1: 'https://www.linkedin.com/in/\notebiyi-gbenga-5b5302131',
                          ),
                          SizedBox(height: 30,),
                          Center(child: Text('OBJECTIVES..',style:GoogleFonts.antic(fontSize: 20))),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Enthusiastic Frontend Mobile developer with 1 and half years of experience, eager to contribute team success through hard work, attention to details and excellent organization skill. Proficient in creating user interface, simple UI with good user experience, responsive and adaptive application with integration of APIs or with the use of fIrebase.',
                                style: GoogleFonts.inter(fontSize: 17,fontWeight: FontWeight.w600),),
                          )
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
