import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeState {
  final RxBool _isLoading = RxBool(true);
  set isLoading(value) => _isLoading.value = value;
  bool get isLoading => _isLoading.value;

  final RxList<dynamic> _bodyPartList = <dynamic>[].obs;
  set bodyPartList(value) => _bodyPartList.value = value;
  List<dynamic> get bodyPartList => _bodyPartList;
}
