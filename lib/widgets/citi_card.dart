import 'package:cozy/models/city.dart';
import 'package:cozy/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.city.id != 3
          ? const EdgeInsets.only(right: 20)
          : const EdgeInsets.only(right: 0),
      child: Container(
        height: 150,
        width: 120,
        decoration: BoxDecoration(
            color: kGreySecondaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32))),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/jakarta.png',
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                this.city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 50,
                            color: kPrimaryColor,
                            child: Icon(
                              Icons.star,
                              color: kOrangeColor,
                              size: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(this.city.name, style: kBlackText.copyWith(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
