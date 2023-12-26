import 'package:fitfolio/data/provider/i_provider.dart';

abstract class IRepository<T> {
  IProvider<T> get provider;
}
