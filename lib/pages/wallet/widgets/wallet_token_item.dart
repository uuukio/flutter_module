import 'package:flutter/material.dart';
import 'package:flutter_module/components/image/remote_image.dart';
import 'package:flutter_module/pages/wallet/models/wallet_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletTokenItem extends StatelessWidget {
  const WalletTokenItem({
    super.key,
    required this.data,
  });

  final WalletTokenModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.w),
      child: Container(
        height: 80.w,
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.w),
        ),
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
                        fontWeight: FontWeight.normal,
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
