import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsNavbarWidget extends StatefulWidget {
  const SettingsNavbarWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsNavbarWidgetState();
  }
}

class _SettingsNavbarWidgetState extends SafeState<SettingsNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
    );
  }
}
