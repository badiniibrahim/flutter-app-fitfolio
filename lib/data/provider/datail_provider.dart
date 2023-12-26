import 'package:dio/dio.dart';
import 'package:fitfolio/core/api/api_provider.dart';
import 'package:fitfolio/data/provider/i_provider.dart';

class DetailProvider extends IProvider<Response> {
  @override
  String get endpoint => "/exercises";

  Future<Response> fetBodyPartByName(String name) async {
    return await ApiProvider.instance.get(endpoint: "$endpoint/bodyPart/$name");
  }
}
