import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';

class NFTBoxPage extends StatefulWidget {
  const NFTBoxPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NFTBoxPageState();
  }
}

class _NFTBoxPageState extends SafeState<NFTBoxPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.transparent,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
