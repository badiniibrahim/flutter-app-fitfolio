import 'package:dio/dio.dart';
import 'package:fitfolio/core/api/api_provider.dart';
import 'package:fitfolio/data/provider/i_provider.dart';

class HomeProvider extends IProvider<Response> {
  @override
  String get endpoint => "/exercises";

  Future<Response> fetBodyPartList() async {
    return await ApiProvider.instance.get(endpoint: "$endpoint/bodyPartList");
  }
}
