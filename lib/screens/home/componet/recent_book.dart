import 'package:flutter/cupertino.dart';
import 'package:myapp/theme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.judul,
  }) : super(key: key);

  final String image;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: borderColorBook),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                judul,
                style: semiBoltText14.copyWith(color: blackColor),
              ),
              CircularPercentIndicator(
                reverse: true,
                radius: 30,
                lineWidth: 7,
                animation: true,
                percent: 0.5,
                progressColor: greenColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                '50% Complate',
                style: semiBoltText12.copyWith(color: greyColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
