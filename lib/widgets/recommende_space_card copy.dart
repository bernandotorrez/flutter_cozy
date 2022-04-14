import 'package:flutter/material.dart';
import '../themes.dart';

class RecommendedSpaceCard extends StatelessWidget {
  const RecommendedSpaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 30),
      child: Container(
        height: 110,
        width: 329,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 110,
                width: 130,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/recommended_space.png',
                      height: 110,
                      width: 130,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(32)),
                        child: Container(
                          height: 30,
                          width: 70,
                          color: kPrimaryColor,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: kOrangeColor,
                                    ),
                                    Text('4/5',
                                        style:
                                            kWhiteText.copyWith(fontSize: 13)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kuratekaso Hott',
                    textAlign: TextAlign.left,
                    style: kBlackText.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(style: TextStyle(fontSize: 16), children: [
                      TextSpan(text: '\$52', style: kPurpleText),
                      TextSpan(text: ' / month', style: kGreyText),
                    ]),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Bandung, Germany',
                    textAlign: TextAlign.left,
                    style: kGreyText.copyWith(fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
