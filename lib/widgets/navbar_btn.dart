import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';


class NavbarBtn extends StatefulWidget {
  NavbarBtn({Key? key}) : super(key: key);

  @override
  _NavbarBtnState createState() => _NavbarBtnState();
}

class _NavbarBtnState extends State<NavbarBtn> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 19),
      width: 327,
      height: 65,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(23), color: boxColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          IconNavbarBtn(0, 'assets/images/icon_home_active.png','assets/images/icon_home.png'),
          IconNavbarBtn(1, 'assets/images/icon_mail_active.png','assets/images/icon_mail.png'),
          IconNavbarBtn(2, 'assets/images/icon_love_active.png','assets/images/icon_love.png'),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget IconNavbarBtn (int index, String imageActiveUrl, String imageUrl){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Image.asset(
            selectedIndex == index ? imageActiveUrl: imageUrl,
            height: 26,
            width: 26,
          ),
          Spacer(),
          selectedIndex == index ? Container(
            height: 4,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(1000),
                    topLeft: Radius.circular(1000)),
                color: blueColor),
          ) : Container()
    
        ],
      ),
    );
  }
}