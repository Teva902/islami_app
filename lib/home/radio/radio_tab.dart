import 'package:flutter/material.dart';

import '../../app_colors.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_logo.png'),
        Text('اذاعه القرأن الكريم'),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                color: AppColors.primaryLightColor,
                size: 40,
              ),
              Icon(
                Icons.play_arrow,
                color: AppColors.primaryLightColor,
                size: 70,
              ),
              Icon(
                Icons.skip_next,
                color: AppColors.primaryLightColor,
                size: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
