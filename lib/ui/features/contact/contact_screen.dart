import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/textfeild_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  // static TextEditingController controller = TextEditingController();
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
    return Container(
      // margin: const EdgeInsets.all(20),
      // padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 550,
            width: MediaQuery.sizeOf(context).width / 3,
            decoration: const BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
            ),
            child: Image.asset(
              AppAssets.kcontact,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(width: kToolbarHeight),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kBlackColor,
                  ),
                ),
                TextFormWidget(
                  controller: nameController,
                  focusNode: nameFocusNode,
                  label: "Name",
                  hint: "Enter your name",
                ),
                const SizedBox(height: 16),
                TextFormWidget(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  label: "Email",
                  hint: "Enter your email",
                ),
                const SizedBox(height: 16),
                TextFormWidget(
                  controller: subjectController,
                  focusNode: subjectFocusNode,
                  label: "Subject",
                  hint: "Enter your subject",
                ),
                const SizedBox(height: 16),
                TextFormWidget(
                  controller: messageController,
                  focusNode: messageFocusNode,
                  minLines: 3,
                  maxLines: 3,
                  label: "Message",
                  hint: "Enter your message",
                ),
                const SizedBox(height: 25),
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
                  child: const Text("Submit"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}