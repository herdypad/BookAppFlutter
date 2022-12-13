import 'package:flutter/material.dart';
import 'package:myapp/models/book.dart';
import 'package:myapp/screens/home/componet/recent_book.dart';
import 'package:myapp/screens/home/componet/tranding_now.dart';
import 'package:myapp/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/homePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = [
    'all book',
    'comic',
    'Novel',
    'magga',
    'fairy Teles'
  ];

  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile-pic.png'),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'herdy',
                  style: semiBoltText20,
                ),
                Text(
                  'good moring',
                  style: regulerText14.copyWith(color: greyColor),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/icons/icon-menu.png',
              width: 18,
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Find Your Favorite Book',
              hintStyle: mediumText14.copyWith(color: greyColor),
              fillColor: greyColorSearch,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              isCollapsed: true,
              contentPadding: EdgeInsets.all(18),
              suffixIcon: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Icon(
                  Icons.search_rounded,
                  color: whiteColor,
                ),
              )),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            RecentBook(
              image: 'assets/images/book1.png',
              judul: 'the Magic',
            ),
            SizedBox(
              width: 20,
            ),
            RecentBook(
              image: 'assets/images/book2.png',
              judul: 'the Martian',
            ),
          ],
        ),
      );
    }

    Widget categories(int index) {
      return InkWell(
        onTap: (() {
          setState(() {
            _isSelected = index;
          });
        }),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: _isSelected == index ? greenColor : tranparanColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _categories[index],
            style: semiBoltText14.copyWith(
                color: _isSelected == index ? whiteColor : blackColor),
          ),
        ),
      );
    }

    Widget listCategoris() {
      return SingleChildScrollView(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _categories
              .asMap()
              .entries
              .map((MapEntry map) => categories(map.key))
              .toList(),
        ),
      );
    }

    Widget trandingNow() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookList
              .asMap()
              .entries
              .map((MapEntry map) => TrandingNow(
                    info: bookList[map.key],
                  ))
              .toList(),
        ),
      );
    }

    return Scaffold(
      // backgroundColor: greenColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: 30,
                ),
                search(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Recent Book',
                    style: semiBoltText16.copyWith(color: blackColor),
                  ),
                ),
                recentBook(),
              ],
            ),
          ),
          listCategoris(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'tranding now',
              style: semiBoltText16.copyWith(color: blackColor),
            ),
          ),
          trandingNow(),
        ],
      ),
    );
  }
}
