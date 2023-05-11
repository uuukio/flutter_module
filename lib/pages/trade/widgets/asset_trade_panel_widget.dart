import 'package:flutter/material.dart';
import 'package:flutter_module/components/image/remote_image.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetTradePanelWidget extends StatefulWidget {
  const AssetTradePanelWidget({super.key, required this.asset});

  final WalletAssetModel asset;

  @override
  State<StatefulWidget> createState() {
    return _AssetTradePanelWidgetState();
  }
}

class _AssetTradePanelWidgetState extends SafeState<AssetTradePanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0.w, bottom: 20.w, left: 20.w, right: 20.w),
      color: const Color(0xFFebf7ff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 80.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.w),
                  width: 40.w,
                  height: 40.w,
                  child: RemoteImage(
                    imageUrl: widget.asset.icon ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 44.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.asset.name ?? "",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${widget.asset.balance ?? 0.000000}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              widget.asset.shortName ?? "",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                  ),
                  child: Text(
                    "发送",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 360.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.w),
            ),
            child: Column(),
          ),
        ],
      ),
    );
  }
}
