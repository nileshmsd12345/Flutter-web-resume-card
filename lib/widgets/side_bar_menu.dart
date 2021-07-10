import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_resume/common/app_colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "MATRIX HR",
                style: TextStyle(
                  color: AppColor.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              icon: "assets/menu_home.png",
              press: (){},
            ),
            DrawerListTile(
              title: "Recruitment",
              icon: "assets/menu_recruitment.png",
              press: (){},
            ),
            DrawerListTile(
              title: "Onboarding",
              icon: "assets/menu_onboarding.png",
              press: (){},
            ),
            DrawerListTile(
              title: "Reports",
              icon: "assets/menu_report.png",
              press: (){},
            ),
            DrawerListTile(
              title: "Calender",
               icon: "assets/menu_calendar.png",
              press: (){},
            ),
            DrawerListTile(
              title: "Settings",
              icon: "assets/menu_settings.png",
              press: (){},
            ),
            Spacer(),
            Image.asset("assets/sidebar_image.png"),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {

  final String ? title,  icon;
  final VoidCallback ? press;
  const DrawerListTile({Key? key, this.title, this.icon, this.press });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(icon!, color: AppColor.white, height: 16, ),
      title: Text(
        title!,
        style: TextStyle(
          color: AppColor.white,
        ),
      ),
    );
  }
}
