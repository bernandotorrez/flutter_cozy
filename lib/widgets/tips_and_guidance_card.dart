import 'package:flutter/material.dart';
import '../themes.dart';

class TipsAndGuidanceCard extends StatelessWidget {
  const TipsAndGuidanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/city_guidelines.png',
          height: 80,
          width: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 13,
                ),
                Text(
                  'City Guidelines',
                  style: kBlackText.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'City Guidelines',
                  style: kGreyText.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
