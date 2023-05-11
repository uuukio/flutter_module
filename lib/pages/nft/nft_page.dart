import 'package:flutter/material.dart';
import 'package:flutter_module/components/state/safe_state.dart';
import 'package:flutter_module/pages/nft/box/nft_box_page.dart';
import 'package:flutter_module/pages/nft/mine/nft_mine_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NFTPage extends StatefulWidget {
  const NFTPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NFTPageState();
  }
}

class _NFTPageState extends SafeState<NFTPage> with AutomaticKeepAliveClientMixin {
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [
    const NFTMinePage(),
    const NFTBoxPage(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 10.w,
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: true,
          bottom: TabBar(
            indicatorColor: const Color(0xFF7906F8),
            indicatorWeight: 4.w,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black54,
            labelColor: const Color(0xFF7906F8),
            unselectedLabelStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
            ),
            labelStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            tabs: const [
              Tab(
                text: "我的NFT",
              ),
              Tab(
                text: "抽取盲盒",
              ),
            ],
            onTap: (index) {
              pageController.jumpToPage(index);
            },
          ),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: pages,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
