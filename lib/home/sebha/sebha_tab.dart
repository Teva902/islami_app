import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int clickCount = 0;

  int prayer = 0;

  double rotationAngle = 0.0;
  String textShow = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              Image.asset(
                'assets/images/sebha_head.png',
              ),
              InkWell(
                  onTap: () {
                    clickCount++;
                    TextWillShow();
                    TextTitle();
                    rotationAngle += 90;
                    setState(() {});
                  },
                  child: Transform.rotate(
                      angle: rotationAngle * (3.1415927 / 180),
                      child: Image.asset('assets/images/sebha_body.png'))),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text('عدد التسبيحات'),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                    color: AppColors.primaryLightColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                      '$clickCount',
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    color: AppColors.primaryLightColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                      textShow,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.whiteColor),
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void TextWillShow() {
    if (clickCount == 31) {
      clickCount = 0;
      prayer++;
    }
  }

  void TextTitle() {
    if (prayer == 1) {
      textShow = 'الحمد لله';
    } else if (prayer == 2) {
      textShow = 'استغفر الله';
    } else if (prayer == 3) {
      textShow = 'الله اكبر';
    } else if (prayer == 4) {
      textShow = 'الملك لله';
    } else if (prayer >= 5) {
      prayer = 0;
      textShow = 'سبحان الله';
    }
  }
}
