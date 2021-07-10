import 'package:flutter/material.dart';
import 'package:web_resume/common/app_colors.dart';
import 'package:web_resume/pages/dashboard/dashboard.dart';
import 'package:web_resume/widgets/side_bar_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Side Navigation Menu
              Expanded(child: SideBar(),),
              ///Main body parts
              Expanded(
                flex: 4,
                child: Dashboard(),),
            ],
          )
      ),
    );
  }
}
