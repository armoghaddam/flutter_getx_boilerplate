import 'package:get/get.dart';

export 'package:flutter_getx_boilerplate/app/common/util/extensions.dart';
export 'package:flutter_getx_boilerplate/app/common/util/utils.dart';

abstract class ApiHelper {
  Future<Response> getPosts();
}
