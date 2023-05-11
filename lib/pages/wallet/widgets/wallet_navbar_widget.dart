import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletNavbarWidget extends StatefulWidget {
  const WalletNavbarWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WalletNavbarWidgetState();
  }
}

class _WalletNavbarWidgetState extends SafeState<WalletNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        expandedHeight: 44.w,
        actions: [
          Center(
            child: Image(
              image: const AssetImage("assets/images/wallet_message.png"),
              width: 25.w,
              height: 25.w,
            ),
          ),
          SizedBox(
            width: 25.w,
          ),
          Center(
            child: GestureDetector(
              child: Image(
                image: const AssetImage("assets/images/wallet_person.png"),
                width: 25.w,
                height: 25.w,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("/mine");
              },
            ),
          ),
        ],
      ),
    );
  }
}
