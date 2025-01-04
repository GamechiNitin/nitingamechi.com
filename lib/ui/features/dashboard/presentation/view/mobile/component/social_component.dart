import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/image_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/helper.dart';

class SocialComponent extends StatelessWidget {
  const SocialComponent({
    super.key,
    this.color = AppColors.kPrimaryColor,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's Connect,",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 14,
                  color: color,
                ),
          ),
          const SizedBox(height: 8),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 16,
            runSpacing: 16,
            children: [
              IconButton(
                onPressed: () {
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: kEmailURL,
                  );
                  Helper.launchLink(emailLaunchUri);
                },
                icon: GlassMorphism(
                  blur: 10,
                  color: color,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.email,
                      size: 30,
                      color: color,
                      // height: 35,
                      // width: 35,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  final Uri call = Uri(
                    scheme: 'tel',
                    // scheme: 'tel:+1-555-010-999'
                    path: kCallURL,
                  );
                  Helper.launchLink(call);
                },
                icon: GlassMorphism(
                  blur: 10,
                  color: color,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.call_sharp,
                      size: 30,
                      color: color,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Helper.launchLink(Uri.parse(kLinkedinURL)),
                icon: GlassMorphism(
                  blur: 10,
                  color: color,
                  opacity: 0.2,
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: const ImageWidget(
                        AppAssets.kLinkedin2,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Helper.launchLink(Uri.parse(kGithubURL)),
                icon: GlassMorphism(
                  blur: 10,
                  color: color,
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
                        color: color,
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
