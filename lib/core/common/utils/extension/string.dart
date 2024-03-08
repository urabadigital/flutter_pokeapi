import 'package:pragma/core/common/utils/extension/map.dart';

extension NullableStringExtension on String? {
  String? toParamUrl(Map<String, dynamic> params) {
    if (this != null) {
      return params.replaceUrlParams(this!);
    }
    return null;
  }
}
