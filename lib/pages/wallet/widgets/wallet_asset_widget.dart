import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/lib/usr/user.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_module/pages/wallet/widgets/wallet_asset_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletAssetWidget extends StatefulWidget {
  const WalletAssetWidget({
    super.key,
    required this.assets,
  });

  final List<WalletAssetModel> assets;

  @override
  State<StatefulWidget> createState() {
    return _WalletAssetWidgetState();
  }
}

class _WalletAssetWidgetState extends SafeState<WalletAssetWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 90.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "你好，${User.instance.name}",
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "我的资产",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.w, bottom: 15.w),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.w)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: buildItems(),
                  ),
                ),
              ],
            );
          },
          childCount: 1,
        ),
      ),
    );
  }

  List<Widget> buildItems() {
    return widget.assets.map((e) => WalletAssetItem(data: e)).toList();
  }
}
