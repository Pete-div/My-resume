import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/route/route_helper.dart';
import 'package:my_resume/view/about_me.dart';
import 'package:my_resume/view/education.dart';
import 'package:my_resume/view/skills.dart';
import 'package:my_resume/view/work_exp.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/color.dart';
import '../widget/list_items.dart';
import '../widget/social_buttons.dart';

class Dashboard extends StatelessWidget {
  // final String index;
  // Dashboard(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/pic.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 3, color: Colors.blueGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SocialIcons(
                              onpressed: () async {
                                final url =
                                    Uri.parse("https://github.com/Pete-div");

                                await launchUrl(
                                  url,
                                );
                              },
                              icon: FaIcon(FontAwesomeIcons.github),
                            ),
                            SocialIcons(
                              onpressed: () async {
                                final url = Uri.parse(
                                    "https://www.linkedin.com/in/otebiyi-gbenga-5b5302131");

                                await launchUrl(
                                  url,
                                );
                              },
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                            ),
                            SocialIcons(
                              onpressed: () async {
                                final url = Uri.parse(
                                    "https://twitter.com/Petecomg00?s=09");

                                await launchUrl(
                                  url,
                                );
                              },
                              icon: FaIcon(FontAwesomeIcons.twitter),
                            ),
                            SocialIcons(
                              onpressed: () async {
                                final url = Uri.parse("tel://+2349030604338");

                                await launchUrl(
                                  url,
                                );
                              },
                              icon: FaIcon(FontAwesomeIcons.phone),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text('Please click on the icons above to contact me.Thanks',style: TextStyle(overflow: TextOverflow.ellipsis),)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.blue, width: 4))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text('My Profile...',
                      style: GoogleFonts.inter(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 5,),
                 Text('Please click on the icons below to read more.'),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, top: 7),
                child: Expanded(
                  child: Container(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          ListItems(
                            icon: const FaIcon(FontAwesomeIcons.person),
                            onpressed: () {
                              Get.to(const AboutMe(),
                                  transition: Transition.leftToRightWithFade);
                            },
                            text: "About me",
                          ),
                          ListItems(
                            icon: const FaIcon(FontAwesomeIcons.briefcase),
                            onpressed: () {
                              Get.to(const Skills(),
                                  transition: Transition.fadeIn);
                            },
                            text: "Skills",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ListItems(
                            icon: const FaIcon(FontAwesomeIcons.codeFork),
                            onpressed: () {
                              Get.to(const WorkExperience(),
                                  transition: Transition.downToUp);
                            },
                            text: "Work Experiences",
                          ),
                          ListItems(
                            icon: const FaIcon(FontAwesomeIcons.userGraduate),
                            onpressed: () {
                              Get.to(const Education(),
                                  transition: Transition.upToDown);
                            },
                            text: "Education",
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
