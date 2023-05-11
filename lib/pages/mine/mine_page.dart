import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/lib/usr/user.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MinePageState();
  }
}

class _MinePageState extends SafeState<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: Container(
          margin: EdgeInsets.only(left: 15.w),
          child: const BackButton(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.w, bottom: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${User.instance.name}的信息",
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.w, bottom: 10.w),
                  height: 90.w,
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5))),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "昵称",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        User.instance.name,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.w, bottom: 10.w),
                  height: 50.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "地址",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Spacer(),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "复制",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  User.instance.walletAddress,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
