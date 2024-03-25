import 'package:flutter/material.dart';
import 'package:menu_perfil/personal_info.dart';
import 'package:menu_perfil/profile.dart';
import 'package:menu_perfil/select_screen.dart';

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
    required this.page,
  }) : super(key: key);

  final String page;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool light = false;

    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Colors.transparent,
            // elevation: 0,
            ),
        body: const Center(
          child: Text("data"),
        ),
        drawer: Drawer(
          width: width * 0.9,
          child: getPage("Profile", light, height, width),
        ));
  }

  Widget getPage(String page, bool light, double height, width) {
    if (page == "Profile") {
      return profile_info(height: height, width: width, light: light);
    } else if (page == "personal_info") {
      return personal_info(height: height, width: width);
    } else {
      return Scaffold();
    }
  }
}
