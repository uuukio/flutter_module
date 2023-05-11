import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetTradeHistoryWidget extends StatefulWidget {
  const AssetTradeHistoryWidget({super.key, required this.asset});

  final WalletAssetModel asset;

  @override
  State<StatefulWidget> createState() {
    return _AssetTradeHistoryWidgetState();
  }
}

class _AssetTradeHistoryWidgetState extends SafeState<AssetTradeHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300.w,
    );
  }
}
