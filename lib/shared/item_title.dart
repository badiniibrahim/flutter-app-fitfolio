import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:fitfolio/core/utilies/theme.dart';
import 'package:flutter/material.dart';

class ItemTitleWidget extends StatelessWidget {
  const ItemTitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
      child: Text(
        title,
        style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
          color: AppColors.black2,
          fontFamily: 'muli',
        ),
      ),
    );
  }
}
