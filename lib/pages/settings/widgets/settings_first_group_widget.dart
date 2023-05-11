import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/settings/widgets/settings_first_group_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsFirstGroupWidget extends StatefulWidget {
  const SettingsFirstGroupWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsFirstGroupWidgetState();
  }
}

class _SettingsFirstGroupWidgetState extends SafeState<SettingsFirstGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.w),
                  child: Text(
                    "设置",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SettingsFirstGroupItem(
                  title: '验证与安全',
                  icon: AssetImage("assets/images/settings_guard.png"),
                ),
                const SettingsFirstGroupItem(
                  title: '客服中心',
                  icon: AssetImage("assets/images/settings_customer.png"),
                ),
                const SettingsFirstGroupItem(
                  title: '公告',
                  icon: AssetImage("assets/images/settings_news.png"),
                ),
                const SettingsFirstGroupItem(
                  title: 'DOCS',
                  icon: AssetImage("assets/images/settings_docs.png"),
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
