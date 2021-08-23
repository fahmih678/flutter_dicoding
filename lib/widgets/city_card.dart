import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/models/city.dart';
import 'package:flutter_basic_dicoding/theme.dart';

class CityCard extends StatelessWidget {

  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: boxColor
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
            child: Image.asset(
              city.imageUrl,
              height: 102,
            ),
          ),
          SizedBox(height: 11,),
          Text(
            city.name,
            style: itemTextStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}