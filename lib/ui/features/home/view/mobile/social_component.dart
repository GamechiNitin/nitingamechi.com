import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/helper.dart';

class SocialComponent extends StatelessWidget {
  const SocialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's Connect,",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 16,
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
                  color: Colors.pinkAccent,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.redAccent,
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
                  color: Colors.lightGreen,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.call_sharp,
                      size: 30,
                      color: Colors.lightGreen,
                      // height: 35,
                      // width: 35,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () => Helper.launchLink(Uri.parse(kLinkedinURL)),
                child: GlassMorphism(
                  blur: 10,
                  color: Colors.blue,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        AppAssets.kLinkedin2,
                        height: 30,
                        width: 30,
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
                  color: Theme.of(context).textTheme.headlineSmall?.color ??
                      Colors.black,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        AppAssets.kGithub,
                        height: 30,
                        width: 30,
                        color:
                            Theme.of(context).textTheme.headlineSmall!.color ??
                                Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
