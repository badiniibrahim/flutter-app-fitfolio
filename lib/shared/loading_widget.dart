import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Center(child: CircularProgressIndicator(color: AppColors.primary));

    return Center(
        child: LoadingAnimationWidget.fourRotatingDots(
            color: AppColors.c4, size: 30));
  }
}
