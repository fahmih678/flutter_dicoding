import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/pages/home_page.dart';
import 'package:flutter_basic_dicoding/theme.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/splash_image.png'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(height: 30,),
                  Text('Cari Kos-kosan\nyang nyaman untuk tinggal',style: titleTextStyle,),
                  SizedBox(height: 10,),
                  Text('Kos nyaman, hatipun tenang', style: subTitleTextStyle,),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Jelajahi Sekarang', 
                        style: btnTextStyle
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      
    );
  }
}