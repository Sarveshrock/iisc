import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';
import 'package:jobhubv2_0/views/common/reusable_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: width,
      height: hieght,
      color: Color(kDarkBlue.value),
      child: Column(children: [
        const SizedBox(
          height: 65,
        ),
        Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Image.asset("assets/images/page2.png")),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text("Stable yourself \n With your abilities",
                textAlign: TextAlign.center,
                style: appStyle(30, Color(kLight.value), FontWeight.w500)),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                    "Get your skills on board......Get your skills on board",
                    textAlign: TextAlign.center,
                    style:
                        appStyle(30, Color(kLight.value), FontWeight.normal))),
          ],
        ),
      ]),
    ));
  }
}
