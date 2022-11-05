import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/about_me.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Education background'),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: About_Me(
                              child: FaIcon(
                                FontAwesomeIcons.userGraduate,
                                size: 20,
                              ),
                              text1:
                                  'Secondary School \n Winners Model College \n 2008 -2014 ',
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: About_Me(
                              child: FaIcon(
                                FontAwesomeIcons.userGraduate,
                                size: 20,
                              ),
                              text1:
                                  'University \n University of Tchnology,\nAkure \n Barchelor of Technology \nin Physics \n 2015-2021',
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
