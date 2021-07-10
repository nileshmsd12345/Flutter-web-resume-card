import 'package:flutter/material.dart';
import 'package:web_resume/common/app_colors.dart';
import 'package:web_resume/pages/dashboard/widgets/Notification_card_widget.dart';
import 'package:web_resume/pages/dashboard/widgets/Recruitment_Data_Widget.dart';
import 'package:web_resume/pages/dashboard/widgets/calender_widget.dart';
import 'package:web_resume/pages/dashboard/widgets/header_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.bgColor,
      ),
      child: Column(
        children: [
          /// Header part
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:2,
                    child: Container(
                      child: Column(
                        children: [
                      NotificationCardWidget(),
                          SizedBox(height: 20,),
                          RecruitmentDataWidget(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                     child: Column(
                       children: [
                         CalenderWidget(),
                       ],
                     ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
