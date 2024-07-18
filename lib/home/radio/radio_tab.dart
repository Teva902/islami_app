import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../app_colors.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.primaryLightColor,
                size: 40,
              ),
              Icon(
                Icons.play_arrow,
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.primaryLightColor,
                size: 70,
              ),
              Icon(
                Icons.skip_next,
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.primaryLightColor,
                size: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
