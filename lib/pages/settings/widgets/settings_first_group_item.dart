import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsFirstGroupItem extends StatelessWidget {
  const SettingsFirstGroupItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final ImageProvider icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.w),
            child: Center(
              child: Image(
                image: icon,
                width: 38.w,
                height: 38.w,
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            width: 38.w,
            height: 38.w,
            child: Center(
              child: Image(
                image: const AssetImage("assets/images/wallet_item_arrow_right.png"),
                width: 20.w,
                height: 20.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
