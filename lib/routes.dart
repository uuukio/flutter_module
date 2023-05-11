import 'package:flutter/material.dart';
import 'package:flutter_module/pages/error/route_error_page.dart';
import 'package:flutter_module/pages/index/index_page.dart';
import 'package:flutter_module/pages/mine/mine_page.dart';
import 'package:flutter_module/pages/trade/asset_trade_page.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/base/scale_text_widget.dart';

class Routes {
  static Map<String, WidgetBuilder> get all {
    return {
      "/": _create(const IndexPage()),
      "/mine": _create(const MinePage()),
      "/trade/asset": _tradeBuilder(),
    };
  }

  static WidgetBuilder _create(Widget page) {
    return (BuildContext context) {
      ScreenUtil.init(context);
      return NoneScaleTextWidget(child: page);
    };
  }

  static WidgetBuilder _tradeBuilder() {
    return (BuildContext context) {
      ScreenUtil.init(context);
      final Object? arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments != null && arguments is WalletAssetModel) {
        return NoneScaleTextWidget(child: AssetTradePage(asset: arguments));
      } else {
        return const NoneScaleTextWidget(child: RouteErrorPage(type: RouteErrorType.missingArguments));
      }
    };
  }
}
