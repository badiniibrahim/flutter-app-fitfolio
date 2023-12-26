import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:fitfolio/core/utilies/size_config.dart';
import 'package:fitfolio/core/utilies/theme.dart';
import 'package:fitfolio/modules/detail/controllers/detail_controller.dart';
import 'package:fitfolio/shared/detail_card_item.dart';
import 'package:fitfolio/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<DetailController>(
      init: DetailController(),
      initState: (_) {
        controller.fetBodyPartByName();
      },
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              Get.parameters['title']!.toUpperCase(),
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            centerTitle: true,
          ),
          body: Obx(
            () => controller.state.isLoading
                ? const LoadingAnimation()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.state.detailList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final resource = controller.state.detailList[index];
                      return DetailCardItem(resource: resource);
                    },
                  ),
          ),
        );
      },
    );
  }
}
