import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/book.dart';
import 'package:myapp/screens/home/page/book_detail.dart';
import 'package:myapp/theme.dart';

class TrandingNow extends StatelessWidget {
  const TrandingNow({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              BookDetail.nameRoute,
              arguments: {
                'imageUrl': info.imageUrl,
                'writer': info.write,
                'title': info.title
              },
            );
          },
          child: Container(
            height: 160,
            width: 110,
            margin: EdgeInsets.only(top: 12, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(info.imageUrl),
              ),
            ),
          ),
        ),
        Text(info.write, style: semiBoltText12.copyWith(color: greyColor)),
        Text(
          info.title,
        )
      ],
    );
  }
}
