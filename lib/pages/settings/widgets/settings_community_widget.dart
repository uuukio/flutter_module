import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsCommunityWidget extends StatelessWidget {
  const SettingsCommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemSize = (ScreenUtil().screenWidth - 80.w) / 5.0;
    return SliverPadding(
      padding: EdgeInsets.only(top: 36.w, bottom: 36.w, left: 20.w, right: 20.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return SizedBox(
              height: itemSize + 90.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "社区",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: itemSize,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image(
                          image: const AssetImage("assets/images/settings_sns_telegram.png"),
                          width: itemSize,
                          height: itemSize,
                        ),
                        Image(
                          image: const AssetImage("assets/images/settings_sns_medium.png"),
                          width: itemSize,
                          height: itemSize,
                        ),
                        Image(
                          image: const AssetImage("assets/images/settings_sns_facebook.png"),
                          width: itemSize,
                          height: itemSize,
                        ),
                        Image(
                          image: const AssetImage("assets/images/settings_sns_twitter.png"),
                          width: itemSize,
                          height: itemSize,
                        ),
                        Image(
                          image: const AssetImage("assets/images/settings_sns_discord.png"),
                          width: itemSize,
                          height: itemSize,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "v2.2.6.2023040310",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            );
          },
          childCount: 1,
        ),
      ),
    );
  }
}
