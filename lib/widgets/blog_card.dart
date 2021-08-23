import 'package:flutter/material.dart';
import 'package:flutter_basic_dicoding/theme.dart';
import 'package:flutter_basic_dicoding/models/blog.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  BlogCard(this.blog);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              blog.imageUrl,
              height: 80,
              width: 80,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                blog.name,
                style: itemTextStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Diperbarui pada ${blog.updatedAt}',
                style: subItemTextStyle,
              )
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
    );
  }
}
