import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/settings/widgets/settings_second_group_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsSecondGroupWidget extends StatefulWidget {
  const SettingsSecondGroupWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsSecondGroupWidgetState();
  }
}

class _SettingsSecondGroupWidgetState extends SafeState<SettingsSecondGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.w, bottom: 20.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                SettingsSecondGroupItem(
                  title: '通知',
                ),
                SettingsSecondGroupItem(
                  title: '条款',
                ),
                SettingsSecondGroupItem(
                  title: '退出',
                ),
              ],
            );
          },
          childCount: 1,
        ),
      ),
    );
  }
}
