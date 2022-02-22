import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sample_queries/views/home.dart';

class LottieSplash extends StatefulWidget {
  const LottieSplash({Key? key}) : super(key: key);

  @override
  State<LottieSplash> createState() => _LottieSplashState();
}

class _LottieSplashState extends State<LottieSplash> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2500),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lotties/84745-message.json'),
          Padding(
            padding:  EdgeInsets.all(50.0.r),
            child: LinearPercentIndicator(
              barRadius: Radius.circular(10.r),
              width: 250.w,
              lineHeight: 15,
              percent: 100/100,
              animation: true,
              animationDuration: 2200,
              progressColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
