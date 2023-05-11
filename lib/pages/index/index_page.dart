import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/nft/nft_page.dart';
import 'package:flutter_module/pages/settings/setting_page.dart';
import 'package:flutter_module/pages/wallet/wallet_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends SafeState<IndexPage> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages =[
    const WalletPage(),
    const NFTPage(),
    const SettingsPage(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedFontSize: 13.sp,
        unselectedFontSize: 13.sp,
        iconSize: 23.w,
        selectedItemColor: const Color(0xFF7906F8),
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "代币",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nfc),
            label: "NFT",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "设置",
          ),
        ],
      ),
    );
  }
}
