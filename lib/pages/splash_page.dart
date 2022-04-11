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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 50),
              child: Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Find Cozy House\nto Stay and Happy',
                style: kBlackText.copyWith(fontSize: 24),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: kGreyText.copyWith(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 50,
                width: 210,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      primary: Colors.white,
                      textStyle: kWhiteText.copyWith(fontSize: 18),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text(
                    'Explore Now',
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Image.asset('assets/images/bottom.png',
                  width: 501, height: 433, fit: BoxFit.fill),
            )
          ],
        ),
      )),
    );
  }
}
