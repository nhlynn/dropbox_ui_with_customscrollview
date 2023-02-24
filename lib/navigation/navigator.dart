import 'package:flutter/material.dart';
import '../page/home.dart';
import '../page/storage_detail.dart';
import '../page/settings.dart';

void onBackPage(BuildContext context){
  return Navigator.pop(context);
}

Future<dynamic> navigateToHomePage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ),
  );
}

Future<dynamic> navigateToStorageDetail(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => StorageDetail(),
    ),
  );
}

Future<dynamic> navigateToSetting(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Settings(),
    ),
  );
}