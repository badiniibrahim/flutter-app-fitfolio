import 'package:get/get.dart';

class DetailState {
  final RxBool _isLoading = RxBool(false);
  set isLoading(value) => _isLoading.value = value;
  get isLoading => _isLoading.value;

  final RxList<dynamic> _detailList = <dynamic>[].obs;
  set detailList(value) => _detailList.value = value;
  List<dynamic> get detailList => _detailList;
}
