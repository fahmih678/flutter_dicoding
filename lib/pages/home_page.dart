import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/models/blog.dart';
import 'package:flutter_basic_dicoding/models/city.dart';
import 'package:flutter_basic_dicoding/models/item.dart';
import 'package:flutter_basic_dicoding/theme.dart';
import 'package:flutter_basic_dicoding/widgets/blog_card.dart';
import 'package:flutter_basic_dicoding/widgets/city_card.dart';
import 'package:flutter_basic_dicoding/widgets/navbar_btn.dart';
import 'package:flutter_basic_dicoding/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NavbarBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jelajah Sekarang',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Mencari Kosan yang Nyaman',
                      style: subTitleTextStyle,
                    ),
                    SizedBox(
                    height: 30,
                    ),
                    Text(
                      'Kota Popular',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.only(left: 24),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/popular1.png')),
                    CityCard(City(
                      id: 2,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/popular2.png')),
                    CityCard(City(
                      id: 3,
                      name: 'Banten',
                      imageUrl: 'assets/images/popular3.png')),
                    CityCard(City(
                      id: 4,
                      name: 'Bali',
                      imageUrl: 'assets/images/popular1.png')),
                    CityCard(City(
                      id: 5,
                      name: 'Singosaren',
                      imageUrl: 'assets/images/popular2.png')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Tempat Rekomendasi',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ItemCard(Item(
                      id: 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/recommended1.png',
                      price: 500,
                      city: 'Solo',
                      province: 'Jawa Tengah',
                      duration: 'tahun',
                      rating: 3)),
                    ItemCard(Item(
                      id: 1,
                      name: 'Kos Permata',
                      imageUrl: 'assets/images/recommended2.png',
                      price: 1000,
                      city: 'Boyolali',
                      province: 'Jawa Tengah',
                      duration: 'tahun',
                      rating: 4)),
                    ItemCard(Item(
                      id: 1,
                      name: 'Kos Putri',
                      imageUrl: 'assets/images/recommended3.png',
                      price: 2500,
                      city: 'Jakarta',
                      province: 'Jakarta',
                      duration: 'tahun',
                      rating: 5)),
                    Text(
                      'Petunjuk dan Informasi',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BlogCard(Blog(
                      id: 1,
                      name: 'City Guidelines',
                      updatedAt: '20 Des',
                      imageUrl: 'assets/images/tips1.png')),
                    BlogCard(Blog(
                      id: 1,
                      name: 'Jakarta Fairship',
                      updatedAt: '11 Des',
                      imageUrl: 'assets/images/tips2.png')),
                    SizedBox(
                      height: 125,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

