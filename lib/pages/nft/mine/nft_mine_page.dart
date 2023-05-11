import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NFTMinePage extends StatefulWidget {
  const NFTMinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NFTMinePageState();
  }
}

class _NFTMinePageState extends SafeState<NFTMinePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: const Color(0xFFDCDDFD),
      child: Stack(
        children: [
          Positioned(
            bottom: 10.w,
            right: 10.w,
            child: Image.asset(
              "assets/images/nft.png",
              width: ScreenUtil().screenWidth - 30,
            ),
          ),
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "未来建筑工",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "阿强",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Builder",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "Qan",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "薪资",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "80金币",
                        style: TextStyle(
                          color: const Color(0xFF666666),
                          fontSize: 19.w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
