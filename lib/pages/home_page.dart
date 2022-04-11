import 'package:cozy/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Explore Now', style: kTitleTextStyle),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Mencari Kosan yang Cozy', style: kSubtitleTextStyle),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Popular Cities', style: TextStyle(fontSize: 16, color: kBlackColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
