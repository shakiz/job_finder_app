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
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/starter-image.jpg'),
                    fit: BoxFit.fill
                )
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 96),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Spice of India",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        height: 1.4,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "Now deliver to your door 24/7",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        height: 1.4,),
                    textAlign: TextAlign.end,
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
