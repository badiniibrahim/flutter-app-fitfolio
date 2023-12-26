import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:fitfolio/core/api/i_controller.dart';
import 'package:fitfolio/data/repositories/home_repositories.dart';
import 'package:fitfolio/modules/home/state.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController with IController {
  final pageController = PageController(initialPage: 0);
  final notchBottomBarController = NotchBottomBarController(index: 0);
  final HomeRepository _repository = HomeRepository();
  final HomeState state = HomeState();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Future<void> fetBodyPartList() async {
    actionPerform(
      action: () async {
        state.isLoading = true;
        final response = await _repository.fetBodyPartList();
        state.bodyPartList = response;
      },
      callback: () {
        state.isLoading = false;
      },
    );
  }
}
