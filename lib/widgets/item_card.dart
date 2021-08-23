import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';
import 'package:flutter_basic_dicoding/models/item.dart';
import 'package:flutter_basic_dicoding/pages/detail_page.dart';

class ItemCard extends StatelessWidget {

  final Item item;
  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: (){
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context)=> DetailPage()
            )
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Container(
                height: 110,
                width: 110,
                child: Stack(
                  children: [
                    Image.asset(
                      item.imageUrl,
                      height: 110,
                      width: 110,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 30,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30)),
                              color: blueColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/icon_star.png',
                                height: 18,
                                width: 18,
                              ),
                              Text(
                                '${item.rating}/5',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: itemTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      'Rp${item.price}k ',
                      style:
                          itemTextStyle.copyWith(fontSize: 16, color: blueColor),
                    ),
                    Text(
                      '/ ${item.duration}',
                      style: subItemTextStyle.copyWith(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '${item.city}, ${item.province}',
                  style: subItemTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
