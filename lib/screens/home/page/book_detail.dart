import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
            ),
            Text(
              'Book Detail',
              style: semiBoltText14.copyWith(color: blackColor),
            ),
            Icon(
              Icons.share_outlined,
              size: 25,
            )
          ],
        ),
      );
    }

    Widget bookImage() {
      return Container(
        height: 267,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(data['imageUrl']),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['writer'],
                      style: semiBoltText20,
                    ),
                    Text(
                      data['title'],
                      style: semiBoltText14.copyWith(color: greyColor),
                    ),
                  ],
                ),
                Text(
                  'free acess',
                  style: mediumText14.copyWith(color: greenColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Description',
              style: semiBoltText14,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
              style: regulerText12.copyWith(color: greyColor),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                width: 240,
                height: 30,
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Center(
                    child: Text(
                  'baca selengkapnya',
                  style: semiBoltText12.copyWith(color: whiteColor),
                )),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroungColor,
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              bookImage(),
              description(),
            ],
          ),
        ],
      ),
    );
  }
}
