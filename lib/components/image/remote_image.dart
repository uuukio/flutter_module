import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RemoteImage extends StatelessWidget {
  const RemoteImage({
    super.key,
    required this.imageUrl,
    this.placeholder,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.color,
  });

  final String imageUrl;
  final Widget? placeholder;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment alignment;
  final ImageRepeat repeat;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty || imageUrl.startsWith("http") == false) {
      return placeholder ?? Container();
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      color: color,
      placeholder: (context, url) {
        return placeholder ?? Container();
      },
      errorWidget: (context, url, error) {
        return Container();
      },
    );
  }
}
