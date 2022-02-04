import 'dart:async';
import 'package:flutter/material.dart';
import 'package:job_finder_app/pages/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    timer = Timer(
      const Duration(milliseconds: 2000),
          () async {
        timer.cancel();
        //region set home
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
        //endregion
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                    "Zovo",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.6), fontSize: 36, fontWeight: FontWeight.bold,)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Find your dream job here",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87.withOpacity(0.6), fontSize: 24, fontWeight: FontWeight.bold,)
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(48),
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/user_with_mobile.png")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
