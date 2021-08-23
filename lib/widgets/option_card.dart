import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';

class OptionCard extends StatefulWidget {

  @override
  _OptionCardState createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: whiteColor,
      ),
      height: 5000, 
      child: ListView(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        children: [
          Column(
            children: [
              optionCard(1, '1 Bulan', 'Cocok untuk kamu yang\nsinggah untuk berekreasi', 200),
              optionCard(2, '6 Bulan', 'Cocok untuk kamu yang\ntinggal', 600),
              optionCard(3, '1 Tahun', 'Cocok untuk kamu yang\nsinggah untuk berekreasi', 1000),
              selectedIndex == -1 ? SizedBox(height: 30,) :  SizedBox(height: 30,),checkoutBtn(),SizedBox(height: 30,)
            ],
          )
        ],
      ),
    );
  }
  Widget optionCard(int index, String plan, String desc, int price) {
      return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: selectedIndex == index
                  ? Border.all(color: blueColor, width: 2) 
                  : Border.all(color: greyColor, width: 1)
        ),
        width: 325,
        child: Row(
          children: [
            selectedIndex == index 
            ? Icon(
              Icons.circle_sharp,
              color: blueColor,
            )
            : Icon(
              Icons.circle_outlined,
              color: greyColor,
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plan,
                  style: subTextStyle,
                ),
                SizedBox(height: 6,),
                Wrap(
                  children: [Text(
                    desc,
                    style: subItemTextStyle,
                  )],
                )
              ],
            ),
            Spacer(),
            Text(
              'Rp${price}k',
              style: itemTextStyle.copyWith(
                color: blueColor
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget checkoutBtn() {
    return Container(
      width: 275,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: blueColor
      ),
      child: TextButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text(
          'Lanjutkan Pembayaran',
          style: btnTextStyle,
        ),
      ),
    );
  }
}

