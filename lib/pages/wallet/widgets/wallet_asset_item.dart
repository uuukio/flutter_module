import 'package:flutter/material.dart';
import 'package:flutter_module/components/image/remote_image.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletAssetItem extends StatelessWidget {
  const WalletAssetItem({
    super.key,
    required this.data,
  });

  final WalletAssetModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("/trade/asset", arguments: data);
      },
      child: Container(
        height: 70.w,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.w),
              width: 40.w,
              height: 40.w,
              child: RemoteImage(
                imageUrl: data.icon ?? "",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 44.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      data.name ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data.shortName ?? "",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          (data.balance ?? 0.0).toStringAsFixed(data.precision),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 40.w,
              height: 40.w,
              child: Center(
                child: Image(
                  image: const AssetImage("assets/images/wallet_item_arrow_right.png"),
                  width: 20.w,
                  height: 20.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
