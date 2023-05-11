import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/lib/net/net.dart';
import 'package:flutter_module/lib/usr/user.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_module/pages/wallet/widgets/wallet_asset_widget.dart';
import 'package:flutter_module/pages/wallet/widgets/wallet_navbar_widget.dart';
import 'package:flutter_module/pages/wallet/widgets/wallet_token_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:convert' as convert;

class WalletContentWidget extends StatefulWidget {
  const WalletContentWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WalletContentWidgetState();
  }
}

class _WalletContentWidgetState extends SafeState<WalletContentWidget> {
  WalletModel? data;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      edgeOffset: 0,
      color: Colors.deepPurpleAccent,
      strokeWidth: 2.w,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        slivers: [
          const WalletNavbarWidget(),
          WalletAssetWidget(assets: data?.assets ?? []),
          WalletTokenWidget(tokens: data?.tokens ?? []),
        ],
      ),
      onRefresh: () {
        return loadData();
      },
    );
  }

  // MARK: - Request

  Future loadData() {
    return Future.wait([
      Net.dio.get("http://123.56.167.220:8080/json/user.json"),
      Net.dio.get("http://123.56.167.220:8080/json/wallet.json"),
    ]).then((value) {
      final List<dynamic> responseList = value.map((e) => e.data).toList();
      if (responseList.length == 2) {
        final Map<dynamic, dynamic> userResponse = responseList[0] as Map<dynamic, dynamic>;
        User.instance.name = userResponse["name"];
        User.instance.walletAddress = userResponse["walletAddress"];

        final Map<dynamic, dynamic> walletResponse = responseList[1] as Map<dynamic, dynamic>;
        final WalletModel walletModel = WalletModel.fromJson(walletResponse);
        setState(() {
          data = walletModel;
        });
      }
    });
  }
}
