import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_boilerplate/app/data/errors/app_errors.dart';

class ApiInterfaceController extends GetxController {
  final Rx<AppErrors?> _error = Rx<AppErrors?>(null);
  AppErrors? get error => _error.value;
  set error(AppErrors? errors) => _error.value = errors;

  final Rx<VoidCallback?> _retry = Rx<VoidCallback?>(null);
  VoidCallback? get retry => _retry.value;
  set retry(VoidCallback? retry) => _retry.value = retry;
}
