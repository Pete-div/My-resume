import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../route/route_helper.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    // _controller = _controller.forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
    Timer(Duration(seconds: 5), () => Get.offNamed(RouteHelper.getDashboardPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
                child: Image.asset(
              'assets/looo3.png',
              width:300,
            )),
          ),
          SizedBox(
            height:20,
          ),
          Center(
              child:  Text(
           'Otebiyi Gbenga peter \n           Resume',
           style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)
          ),),
        ],
      ),
    );
  }
}
