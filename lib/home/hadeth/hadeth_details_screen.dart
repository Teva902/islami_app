import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/hadeth/item_hadeth_details.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_background_dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.blackColor),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.04),
          decoration: BoxDecoration(
              color: provider.isDarkMode()
                  ? AppColors.primaryDarkColor
                  : AppColors.whiteColor,
              borderRadius: BorderRadius.circular(24)),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.primaryLightColor,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
