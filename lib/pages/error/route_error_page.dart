import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum RouteErrorType {
  missingArguments,
}

class RouteErrorPage extends StatefulWidget {
  const RouteErrorPage({super.key, required this.type});

  final RouteErrorType type;

  @override
  State<StatefulWidget> createState() {
    return _RouteErrorPageState();
  }
}

class _RouteErrorPageState extends SafeState<RouteErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: Container(
          margin: EdgeInsets.only(left: 15.w),
          child: const BackButton(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
