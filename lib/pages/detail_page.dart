import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';
import 'package:flutter_basic_dicoding/widgets/icon_facility.dart';
import 'package:flutter_basic_dicoding/widgets/option_card.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/detail_pic.png',
              width: MediaQuery.of(context).size.width,
            ),
            
            ListView(
              children: [
                SizedBox(height: 328,),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(30), topRight: Radius.circular(30)
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            // Note Title row
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kos Permata',
                                      style: titleTextStyle,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Rp200k',
                                          style: itemTextStyle.copyWith(
                                            color: blueColor, 
                                            fontSize: 16
                                          ),
                                        ),
                                        Text(
                                          '/ bulan',
                                          style: subItemTextStyle,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 108,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/icon_star.png',
                                        height: 20,
                                      ),
                                      Image.asset(
                                        'assets/images/icon_star.png',
                                        height: 20,
                                      ),
                                      Image.asset(
                                        'assets/images/icon_star.png',
                                        height: 20,
                                      ),
                                      Image.asset(
                                        'assets/images/icon_star.png',
                                        height: 20,
                                      ),
                                      Image.asset(
                                        'assets/images/icon_star_base.png',
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 30,),
                            Text(
                              'Fasilitas Utama',
                              style: subTextStyle,
                            ),
                            SizedBox(height: 12,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconFacility(
                                  imageUrl: 'assets/images/icon_bar.png',
                                  name: 'Dapur',
                                  total: 3,
                                ),
                                IconFacility(
                                  imageUrl: 'assets/images/icon_bed.png',
                                  name: 'Kasur',
                                  total: 2,
                                ),
                                IconFacility(
                                  imageUrl: 'assets/images/icon_storage.png',
                                  name: 'Lemari',
                                  total: 2,
                                )
                              ],
                            ),
                            SizedBox(height: 30,),
                            Text(
                              'Tampilan kos',
                              style: subTextStyle,
                            ),
                            SizedBox(height: 12,)
                          ],
                        ),
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          scrollDirection: Axis.horizontal,
                          children: [
                            imageDetail('assets/images/detail1.png'),
                            imageDetail('assets/images/detail2.png'),
                            imageDetail('assets/images/recommended1.png'),
                            imageDetail('assets/images/recommended2.png'),
                            imageDetail('assets/images/detail_pic.png'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: subTextStyle,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20\nPalembang',
                                  style: subTitleTextStyle,
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.edit_location_outlined)
                                )
                              ],
                            ),
                            SizedBox(height: 40,),
                            
                          ],
                        ),
                      ),
                      Container(
                        width: 327,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: blueColor
                        ),
                        child: TextButton(
                          onPressed: (){
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: (context), 
                              builder: (context) {
                                return OptionCard();
                              }
                            );
                          },
                          child: Text(
                            'Pesan Sekarang',
                            style: btnTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Row(
                children: [
                  IconButton(
                    focusColor: blueColor,
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: Icon(Icons.arrow_back_rounded),
                    color: whiteColor,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.favorite),
                    color: whiteColor,
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

Widget imageDetail(String imageUrl){
  return Container(
    margin: EdgeInsets.only(right: 18),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        imageUrl,
        height: 88,
        width: 110,
      ),
    ),
  );
}