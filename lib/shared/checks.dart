import 'package:get/get_utils/get_utils.dart';

bool isNullOrBlank(dynamic value) => GetUtils.isNullOrBlank(value)!;
bool isNotNullOrBlank(dynamic value) => !isNullOrBlank(value);
Map<String, dynamic> mapCompact(Map<String, dynamic> map) {
  return Map<String, dynamic>.fromEntries(
    map.entries.where((entry) => isNotNullOrBlank(entry.value)),
  );
}
