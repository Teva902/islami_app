import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              Image.asset('assets/images/sebha_head.png'),
              Image.asset('assets/images/sebha_body.png'),
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
                  '0',
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
                  'سبحان الله',
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
}
