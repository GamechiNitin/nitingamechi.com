import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'dot_indicator_widget.dart';
import 'glass_widget.dart';
import 'image_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget(
      {super.key, required this.imagelist, required this.isLocal});
  final List<String> imagelist;
  final bool isLocal;

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int selectedImageIndex = 0;
  bool fullscreen = false;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  _notify() {
    if (mounted) setState(() {});
  }

  void _updateIndex(int index) {
    pageController.jumpToPage(index);
    selectedImageIndex = index;
    _notify();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 400,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              GlassMorphism(
                blur: 10,
                color: AppColors.kFrostedGlassColor,
                bcolor: AppColors.kWhite40Color,
                border: true,
                opacity: 0.3,
                borderRadius: BorderRadius.circular(kBorderRadius),
                child: PageView.builder(
                  itemCount: widget.imagelist.length,
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    selectedImageIndex = index;
                    _notify();
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ImageWidget(
                        widget.imagelist[index],
                        width: double.infinity,
                        height: 400,
                        isLocal: widget.isLocal,
                        fit: fullscreen ? BoxFit.cover : BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  fullscreen = !fullscreen;
                  _notify();
                },
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.kDefault2Color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      fullscreen
                          ? Icons.fullscreen_exit_outlined
                          : Icons.fullscreen,
                      color: AppColors.kWhiteColor,
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),

        DotIndicator(
          currentIndex: selectedImageIndex,
          itemCount: widget.imagelist.length,
          onTap: (value) => _updateIndex(value),
        ),

        const SizedBox(height: 20),
        // Screenshot Thumbnails (list below carousel)
        SizedBox(
          height: 100,
          child: GlassMorphism(
            blur: 10,
            color: AppColors.kH1,
            border: true,
            opacity: 0.3,
            borderRadius: BorderRadius.circular(kBorderRadius),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.imagelist.length,
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => _updateIndex(index),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.imagelist[index],
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
