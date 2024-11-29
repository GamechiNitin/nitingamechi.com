import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/contact/ui/contact_component.dart';
import 'package:nitingamechi/utils/app_dimens.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: kBodyWebPadding(context),
        vertical: kToolbarHeight,
      ),
      child: const ContactComponent(),
    );
  }
}
