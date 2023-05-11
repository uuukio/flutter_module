import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'widgets/wallet_background_widget.dart';
import 'widgets/wallet_content_widget.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WalletPageState();
  }
}

class _WalletPageState extends SafeState<WalletPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: const [
          WalletBackgroundWidget(),
          WalletContentWidget(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
