import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsDividerWidget extends StatefulWidget {
  const SettingsDividerWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsDividerWidgetState();
  }
}

class _SettingsDividerWidgetState extends SafeState<SettingsDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            height: 10.w,
            color: const Color(0xFFEEEEEE),
          );
        },
        childCount: 1,
      ),
    );
  }
}
