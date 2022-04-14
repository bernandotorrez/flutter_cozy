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
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 150,
          width: 120,
          color: kGreySecondaryColor,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30)),
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
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(this.city.name, style: kBlackText.copyWith(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
