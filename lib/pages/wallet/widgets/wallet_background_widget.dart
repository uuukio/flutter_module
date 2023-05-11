import 'package:flutter/material.dart';

class WalletBackgroundWidget extends StatelessWidget {
  const WalletBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: const Image(
        image: AssetImage("assets/images/wallet_background.jpg"),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
