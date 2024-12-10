import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/image_widget.dart';
import 'package:nitingamechi/ui/widget/textfeild_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ContactComponent extends StatefulWidget {
  const ContactComponent({super.key});

  @override
  State<ContactComponent> createState() => _ContactComponentState();
}

class _ContactComponentState extends State<ContactComponent> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode subjectFocusNode = FocusNode();
  FocusNode messageFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kFrostedGlassColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.3,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.sizeOf(context).width / 3,
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(kBorderRadius)),
                child: ImageWidget(
                  AppAssets.getContactAssets(),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: kToolbarHeight),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppString.kContactUs,
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  TextFormWidget(
                    controller: nameController,
                    focusNode: nameFocusNode,
                    label: AppString.kNameContact,
                    hint: AppString.kEnterNameContact,
                  ),
                  const SizedBox(height: 10),
                  TextFormWidget(
                    controller: emailController,
                    focusNode: emailFocusNode,
                    label: AppString.kEmailContact,
                    hint: AppString.kEnterEmailContact,
                  ),
                  const SizedBox(height: 10),
                  TextFormWidget(
                    controller: subjectController,
                    focusNode: subjectFocusNode,
                    label: AppString.kSubjectContact,
                    hint: AppString.kEnterSubjectContact,
                  ),
                  const SizedBox(height: 10),
                  TextFormWidget(
                    controller: messageController,
                    focusNode: messageFocusNode,
                    minLines: 3,
                    maxLines: 3,
                    label: AppString.kMessageContact,
                    hint: AppString.kEnterMessageContact,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                    ),
                    child: const Text(AppString.kSubmit),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
