import 'package:flutter/material.dart';
import 'package:web_resume/common/app_colors.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: [
                    TextSpan(text: "Good Morning"),
                    TextSpan(
                      text: " Ravi Patel!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Today you have 9 New Applications.\nAlso you need to hire 2 new UX Designers. 1\nReact Native Developer.",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Read More",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          Spacer(),
      Image.asset("assets/notification_image.png", height: 129,),

        ],
      ),
    );
  }
}
