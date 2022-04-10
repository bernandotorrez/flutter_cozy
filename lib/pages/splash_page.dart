import 'package:cozy/themes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Find Cozy House\nto Stay and Happy',
                style: kTitleTextStyle,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: kSubtitleTextStyle,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 210,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      primary: Colors.white,
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                  onPressed: () {
                    print('explore now');
                  },
                  child: const Text(
                    'Explore Now',
                  ),
                ),
              ),
              Image.asset('assets/images/bottom.png', width: 501, height: 433)
            ],
          ),
        ),
      )),
    );
  }
}
