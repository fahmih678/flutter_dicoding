import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';

// ignore: must_be_immutable
class IconFacility extends StatelessWidget {
  String imageUrl;
  String name;
  int total;

  IconFacility({
    this.imageUrl ='assets/images/icon_bar.png', 
    this.name='kitchen',
    this.total=2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          height: 32,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '$total ',
              style: subItemTextStyle.copyWith(
                  color: blueColor, fontWeight: FontWeight.w400),
            ),
            Text(
              name,
              style: subItemTextStyle,
            )
          ],
        )
      ],
    );
  }
}
