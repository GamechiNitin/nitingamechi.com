import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

import 'shimmer_home_widget.dart';

class HomeLoadingScreen extends StatelessWidget {
  const HomeLoadingScreen({super.key});
  static ValueNotifier<int> currentIndex = ValueNotifier(0);
  static ValueNotifier<String?> selectedProduct = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kBodyWebPadding(context)),
      child: Scaffold(
        backgroundColor: AppColors.kTransparentColor,
        // appBar: AppBar(
        //   backgroundColor: AppColors.kTransparentColor,
        //   automaticallyImplyLeading: false,
        //   title: ShimmerLoadingWidget(
        //     height: kToolbarHeight,
        //     width: MediaQuery.of(context).size.width,
        //   ),
        //   actions: const [
        //     ShimmerLoadingWidget(
        //       height: 35,
        //       width: 35,
        //       radius: 50,
        //     ),
        //     SizedBox(width: kMiniGap),
        //     ShimmerLoadingWidget(
        //       height: 35,
        //       width: 35,
        //       radius: 50,
        //     ),
        //     SizedBox(width: kDefaultGap),
        //   ],
        // ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(kDefaultGap),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).width * 0.05),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).width * 0.05),
                    ShimmerLoadingWidget(
                      height: kToolbarHeight,
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: kDefaultGap, top: kDefaultGap),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerLoadingWidget(
                            height: 20,
                            width: 100,
                          ),
                          ShimmerLoadingWidget(
                            height: 20,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    const ShimmerLoadingWidget(
                      height: 153,
                      width: 300,
                    ),

                    // --- Categories
                    const SizedBox(height: 100),
                    SizedBox(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          5,
                          (e) {
                            return const Column(
                              children: [
                                ShimmerLoadingWidget(
                                  height: 60,
                                  width: 60,
                                  radius: 300,
                                ),
                                SizedBox(height: 6),
                                ShimmerLoadingWidget(
                                  height: 10,
                                  width: 50,
                                ),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: ShimmerLoadingWidget(
                        height: 10,
                        width: 100,
                      ),
                    ),
                    const SizedBox(height: kMiniGap),
                    SizedBox(
                      height: 33,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: kDefaultGap),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) =>
                            const ShimmerLoadingWidget(
                          height: 45,
                          width: 90,
                          radius: 300,
                        ),
                      ),
                    ),
                    const SizedBox(height: kDefaultGap),
                    SizedBox(
                      height: 500,
                      child: ShimmerLoadingWidget(
                        height: 10,
                        width: MediaQuery.sizeOf(context).width,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: ShimmerLoadingWidget(
                  height: 160,
                  width: 160,
                  radius: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
