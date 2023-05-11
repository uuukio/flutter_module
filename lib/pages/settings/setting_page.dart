import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/settings/widgets/settings_community_widget.dart';
import 'package:flutter_module/pages/settings/widgets/settings_divider_widget.dart';
import 'package:flutter_module/pages/settings/widgets/settings_first_group_widget.dart';
import 'package:flutter_module/pages/settings/widgets/settings_navbar_widget.dart';
import 'package:flutter_module/pages/settings/widgets/settings_second_group_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsPageState();
  }
}

class _SettingsPageState extends SafeState<SettingsPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        slivers: [
          SettingsNavbarWidget(),
          SettingsFirstGroupWidget(),
          SettingsDividerWidget(),
          SettingsSecondGroupWidget(),
          SettingsDividerWidget(),
          SettingsCommunityWidget(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}