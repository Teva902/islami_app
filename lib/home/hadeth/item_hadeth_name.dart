import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: provider.isDarkMode()
                ? AppColors.whiteColor
                : AppColors.blackColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
