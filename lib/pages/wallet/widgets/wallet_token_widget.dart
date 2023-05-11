import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_module/pages/wallet/widgets/wallet_token_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletTokenWidget extends StatefulWidget {
  const WalletTokenWidget({
    super.key,
    required this.tokens,
  });

  final List<WalletTokenModel> tokens;

  @override
  State<StatefulWidget> createState() {
    return _WalletTokenWidgetState();
  }
}

class _WalletTokenWidgetState extends SafeState<WalletTokenWidget> {
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
                  height: 60.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "游戏代币",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
                        height: 50.w,
                        child: Center(
                          child: Image(
                            image: const AssetImage("assets/images/wallet_sort.png"),
                            color: Colors.grey,
                            width: 30.w,
                            height: 30.w,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: buildItems(),
                ),
              ],
            );
          },
          childCount: 1,
        ),
      ),
    );
  }

  List<WalletTokenItem> buildItems() {
    return widget.tokens.map((e) => WalletTokenItem(data: e)).toList();
  }
}
