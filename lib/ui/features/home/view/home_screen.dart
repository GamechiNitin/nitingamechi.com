import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/ui/features/home/widget/menu_text_widget.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:rive/rive.dart' as rive;
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 275,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 16),
          child: RichText(
            text: TextSpan(
              text: '< ',
              style: Theme.of(context).textTheme.labelMedium,
              children: [
                TextSpan(
                  text: 'N',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.kBlueAccentColor,
                      ),
                ),
                TextSpan(
                  text: 'itin',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(
                  text: 'Gamechi',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(
                  text: ' />',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MenuTextWidget(label: 'Home'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'About me'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Skills'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Work'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Experience'),
            SizedBox(width: 30),
          ],
        ),
        actions: [
          Switch(
            value: false,
            inactiveThumbColor: AppColors.kErrorColor,
            inactiveTrackColor: AppColors.kLightErrorColor,
            onChanged: (onChanged) {},
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.kBlackColor),
            ),
            child: const Text('Download Resume'),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAssets.kDash1,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Namaste, I'm",
                        style: GoogleFonts.crimsonText(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          // fontStyle: FontStyle.italic,
                          letterSpacing: 1.1,
                        ),
                      ),
                      Text(
                        "Nitin Gamechi",
                        style: GoogleFonts.crimsonText(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          // fontStyle: FontStyle.italic,
                          letterSpacing: 1.1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: 'A Passionate ',
                            style: GoogleFonts.crimsonText(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: '<Flutter Developer/>',
                                style: GoogleFonts.crimsonText(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blue,
                                  // fontStyle: FontStyle.italic,
                                  letterSpacing: 1.1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' \nwith 3 years of experince creating \nmulti-platfrom mobile application.',
                                style: GoogleFonts.crimsonText(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: kToolbarHeight),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: const Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      rive.RiveAnimation.asset(
                        AppAssets.kDash,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white,
              child: Text(
                "I write Code_>",
                style: GoogleFonts.mogra(
                  color: AppColors.kBlackColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
