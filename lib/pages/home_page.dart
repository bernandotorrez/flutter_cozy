import 'package:cozy/models/city.dart';
import 'package:cozy/models/recommended_space.dart';
import 'package:cozy/themes.dart';
import 'package:cozy/widgets/citi_card.dart';
import 'package:cozy/widgets/recommende_space_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child:
                  Text('Explore Now', style: kBlackText.copyWith(fontSize: 24)),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Mencari Kosan yang Cozy',
                  style: kGreyText.copyWith(fontSize: 16)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Popular Cities',
                  style: TextStyle(fontSize: 16, color: kBlackColor)),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                height: 150,
                width: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      city: City(id: 1, name: 'Jakarta', imageUrl: 'Jakarta'),
                    ),
                    CityCard(
                      city: City(
                          id: 2,
                          name: 'Bogor',
                          imageUrl: 'Bogor',
                          isPopular: true),
                    ),
                    CityCard(
                      city: City(id: 3, name: 'Bandung', imageUrl: 'Bandung'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Recommended Space',
                  style: kBlackTextRegular.copyWith(fontSize: 16)),
            ),
            SizedBox(
              height: 16,
            ),
            RecommendedSpaceCard(
              recommendedSpace: RecommendedSpace(
                  id: 1,
                  imageUrl: 'Jakarta',
                  score: '4',
                  name: 'Kuratekaso Hott',
                  price: 52,
                  places: [
                    'Bandung',
                    'Germany',
                  ]),
            ),
            RecommendedSpaceCard(
              recommendedSpace: RecommendedSpace(
                  id: 2,
                  imageUrl: 'Roemah Nenek',
                  score: '5',
                  name: 'Roemah Nenek',
                  price: 11,
                  places: [
                    'Seattle',
                    'Bogor',
                  ]),
            ),
            RecommendedSpaceCard(
              recommendedSpace: RecommendedSpace(
                  id: 3,
                  imageUrl: 'Darling How',
                  score: '5',
                  name: 'Darling How',
                  price: 20,
                  places: [
                    'Jakarta',
                    'Indonesia',
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
