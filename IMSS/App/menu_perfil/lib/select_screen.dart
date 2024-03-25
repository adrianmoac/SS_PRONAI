import 'package:flutter/material.dart';
import 'package:menu_perfil/personal_info.dart';
import 'package:menu_perfil/profile.dart';

Widget getPage(String page, bool light, double height, width) {
  if (page == "Profile") {
    return profile_info(height: height, width: width, light: light);
  } else if (page == "personal_info") {
    return personal_info(height: height, width: width);
  } else {
    return Scaffold();
  }
  return profile_info(height: height, width: width, light: light);
}
