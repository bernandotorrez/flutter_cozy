import 'package:cozy/themes.dart';
import 'package:cozy/widgets/citi_card.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text('Explore Now', style: kBlackText.copyWith(fontSize: 24)),
                SizedBox(
                  height: 2,
                ),
                Text('Mencari Kosan yang Cozy',
                    style: kGreyText.copyWith(fontSize: 16)),
                SizedBox(
                  height: 30,
                ),
                Text('Popular Cities',
                    style: TextStyle(fontSize: 16, color: kBlackColor)),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(),
                      CityCard(),
                      CityCard(),
                      CityCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
