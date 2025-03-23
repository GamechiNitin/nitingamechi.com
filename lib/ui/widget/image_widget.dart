import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:shimmer/shimmer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
    this.urlPath, {
    super.key,
    this.height = 50,
    this.width = 50,
    this.isLocal = true,
    this.borderRadius = kBorderRadius,
    this.fit = BoxFit.cover,
    this.padding,
  });
  final String urlPath;
  final bool isLocal;
  final BoxFit? fit;
  final double height;
  final double width;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    if (isLocal) {
      precacheImage(AssetImage(urlPath), context); // Precache image
    }

    return GlassMorphism(
      blur: 10,
      color: AppColors.kFrostedGlassColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.3,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: padding,
        height: height,
        width: width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: isLocal
              ? Image.asset(
                  urlPath,
                  width: width,
                  height: height,
                  fit: fit,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    color: AppColors.kSecondaryColor,
                    size: 20,
                  ),
                  // frameBuilder: (context, child, loadingProgress, val) {
                  //   if (loadingProgress != null) {
                  //     return Center(
                  //       child: Shimmer.fromColors(
                  //         baseColor: AppColors.greenAccent,
                  //         highlightColor: Colors.blueAccent,
                  //         child: const CircularProgressIndicator(
                  //           backgroundColor: AppColors.greenAccent,
                  //           color: AppColors.greenAccent,
                  //         ),
                  //       ),
                  //     );
                  //   }
                  //   return child;
                  // },
                )
              : CachedNetworkImage(
                  imageUrl: urlPath,
                  fit: fit,
                  height: height,
                  width: width,
                  memCacheHeight: int.parse(height.toString()),
                  memCacheWidth: int.parse(width.toString()),
                  errorWidget: (context, error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    color: AppColors.kSecondaryColor,
                    size: 20,
                  ),
                  progressIndicatorBuilder: (context, child, loadingProgress) {
                    return Center(
                      child: Shimmer.fromColors(
                        baseColor: AppColors.greenAccent,
                        highlightColor: Colors.blueAccent,
                        child: const CircularProgressIndicator(
                          backgroundColor: AppColors.greenAccent,
                          color: AppColors.greenAccent,
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
