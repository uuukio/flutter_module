import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/trade/widgets/asset_trade_history_widget.dart';
import 'package:flutter_module/pages/trade/widgets/asset_trade_panel_widget.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetTradePage extends StatefulWidget {
  const AssetTradePage({
    super.key,
    required this.asset,
  });

  final WalletAssetModel asset;

  @override
  State<StatefulWidget> createState() {
    return _AssetTradePageState();
  }
}

class _AssetTradePageState extends SafeState<AssetTradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebf7ff),
      appBar: AppBar(
        backgroundColor: const Color(0xFFebf7ff),
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: Container(
          margin: EdgeInsets.only(left: 15.w),
          child: const BackButton(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AssetTradePanelWidget(asset: widget.asset),
            AssetTradeHistoryWidget(asset: widget.asset),
          ],
        ),
      ),
    );
  }
}
