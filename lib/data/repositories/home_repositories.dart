import 'package:dio/dio.dart';
import 'package:fitfolio/data/provider/home_provider.dart';
import 'package:fitfolio/data/repositories/i_repository.dart';

class HomeRepository extends IRepository<Response> {
  @override
  HomeProvider get provider => HomeProvider();

  Future<List<dynamic>> fetBodyPartList() async {
    final response = await provider.fetBodyPartList();
    var res = response.data as List;

    return res;
  }
}
