import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/ui/features/home/view/web/cubit/nav_cubit.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/helper.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

import 'glass_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      builder: (context, state) {
        return GlassMorphism(
          blur: 10,
          color: AppColors.kBlackColor,
          bcolor: AppColors.kWhite40Color,
          border: true,
          opacity: 0.3,
          borderRadius: BorderRadius.circular(kBorderRadius),
          child: Container(
            margin: const EdgeInsets.all(20),
            height: 200,
            width: kMW(context),
            decoration: BoxDecoration(
              color: AppColors.kBlackColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Shivshakti Farm, Vasad - 388306\nVasad, Anand, Gujarat-India.",
                      style: TextStyle(
                        color: AppColors.kWhite90Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Let's Connect,",
                      style: TextStyle(
                        color: AppColors.kWhite90Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      // alignment: WrapAlignment.start,
                      // spacing: 16,
                      // runSpacing: 16,
                      children: [
                        // const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            final Uri emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: kEmailURL,
                            );
                            Helper.launchLink(emailLaunchUri);
                          },
                          child: GlassMorphism(
                            blur: 10,
                            color: AppColors.kWhite90Color,
                            opacity: 0.2,
                            borderRadius: BorderRadius.circular(300),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Icon(
                                Icons.email,
                                size: 22,
                                color: Colors.white,
                                // height: 35,
                                // width: 35,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            final Uri call = Uri(
                              scheme: 'tel',
                              // scheme: 'tel:+1-555-010-999'
                              path: kCallURL,
                            );
                            Helper.launchLink(call);
                          },
                          child: GlassMorphism(
                            blur: 10,
                            color: AppColors.kWhite90Color,
                            opacity: 0.2,
                            borderRadius: BorderRadius.circular(300),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Icon(
                                Icons.call_sharp,
                                size: 22,
                                color: Colors.white,

                                // height: 35,
                                // width: 35,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () =>
                              Helper.launchLink(Uri.parse(kLinkedinURL)),
                          child: GlassMorphism(
                            blur: 10,
                            color: AppColors.kWhite90Color,
                            opacity: 0.2,
                            borderRadius: BorderRadius.circular(300),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(300),
                                child: Image.asset(
                                  AppAssets.kLinkedin2,
                                  height: 22,
                                  width: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => Helper.launchLink(Uri.parse(kGithubURL)),
                          child: GlassMorphism(
                            blur: 10,
                            color: AppColors.kWhiteColor,
                            opacity: 0.2,
                            borderRadius: BorderRadius.circular(300),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(300),
                                child: Image.asset(
                                  AppAssets.kGithub,
                                  height: 22,
                                  width: 22,
                                  color: AppColors.kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<NavCubit>(context).updateIndex(0);
                      },
                      child: const Text(
                        "Home",
                        style: TextStyle(
                          color: AppColors.kLightWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<NavCubit>(context).updateIndex(1);
                      },
                      child: const Text(
                        "Resume",
                        style: TextStyle(
                          color: AppColors.kLightWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<NavCubit>(context).updateIndex(2);
                      },
                      child: const Text(
                        "Project",
                        style: TextStyle(
                          color: AppColors.kLightWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<NavCubit>(context).updateIndex(3);
                      },
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          color: AppColors.kLightWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Developed by Nitin Gamechi',
                      style: TextStyle(
                        color: AppColors.kH11,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '© ${DateTime.now().year} Next.in, All rights reserved.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
