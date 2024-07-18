import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int clickCount = 0;
  int index = 0;
  List<String> azker = [
    'الحمد لله',
    "استغفر الله",
    'سبحان الله',
    'الله اكبر',
  ];

  double rotationAngle = 0.0;
  String textShow = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    right: MediaQuery.of(context).size.width * 0.15,
                    child: provider.isDarkMode()
                        ? Image.asset(
                            'assets/images/sebha_head_dark.png',
                          )
                        : Image.asset(
                            'assets/images/sebha_head.png',
                          ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.09),
                    child: InkWell(
                        onTap: () {
                          clickCount++;
                          AzkerShow();
                          // TextWillShow();
                          // TextTitle();
                          rotationAngle += 90;
                          setState(() {});
                        },
                        child: Transform.rotate(
                            angle: rotationAngle * (3.1415927 / 180),
                            child: provider.isDarkMode()
                                ? Image.asset(
                                    'assets/images/body_sebha_dark.png',
                                  )
                                : Image.asset('assets/images/sebha_body.png'))),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text('عدد التسبيحات'),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04),
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? AppColors.yellowColor
                        : AppColors.primaryLightColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  '$clickCount',
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? AppColors.yellowColor
                        : AppColors.primaryLightColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                      "${azker[index]}",
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

  void AzkerShow() {
    if (clickCount == 33) {
      index++;
      clickCount = 0;
      if (index == azker.length) {
        index = 0;
        clickCount++;
      }
    }
  }

// void TextWillShow() {
//   if (clickCount == 31) {
//     clickCount = 0;
//     prayer++;
//   }
// }
//
// void TextTitle() {
//   if (prayer == 1) {
//     textShow = 'الحمد لله';
//   } else if (prayer == 2) {
//     textShow = 'استغفر الله';
//   } else if (prayer == 3) {
//     textShow = 'الله اكبر';
//   } else if (prayer == 4) {
//     textShow = 'الملك لله';
//   } else if (prayer >= 5) {
//     prayer = 0;
//     textShow = 'سبحان الله';
//   }
// }
}
