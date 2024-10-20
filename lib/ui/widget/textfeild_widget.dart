import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_decoration.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.obscureText,
    this.onSuffixIxonTap,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.errorText,
    this.textInputAction,
    this.enabled,
    this.hint,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final String? hint;
  final String? errorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final VoidCallback? onSuffixIxonTap;
  final int? minLines;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.kBlackColor,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          enabled: enabled,
          textInputAction: textInputAction,
          minLines: minLines,
          maxLines: maxLines ?? 1,
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          cursorColor: AppColors.kPrimaryColor,
          onEditingComplete: onEditingComplete,
          validator: validator,
          obscureText: obscureText != null ? obscureText! : false,
          style: Theme.of(context)
              .inputDecorationTheme
              .hintStyle
              ?.copyWith(color: AppColors.kBlackColor),
          decoration: InputDecoration(
            // labelText: label,
            hintText: hint,
            errorMaxLines: 2,
            errorText: errorText,
            prefixIcon: prefixIcon == null
                ? null
                : Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.only(left: 6),
                    child: Icon(
                      prefixIcon,
                      size: 20,
                      color: AppColors.kSecondaryColor,
                    ),
                  ),
            // suffixIcon: suffixIcon == null
            //     ? null
            //     : GestureDetector(
            //         onTap: onSuffixIxonTap,
            //         child: Container(
            //           color: Colors.transparent,
            //           child: Icon(
            //             suffixIcon,
            //             size: 20,
            //             color: Theme.of(context).textTheme.bodySmall?.color,
            //           ),
            //         ),
            //       ),
            // contentPadding: contentPadding ??
            //     const EdgeInsets.only(
            //       left: 16,
            //       top: 16,
            //     ),
            alignLabelWithHint: true,
            border: DashDecoration.kInputBorder,
            enabledBorder: DashDecoration.kInputBorder,
            focusedBorder: DashDecoration.kInputBorder,
            errorBorder: DashDecoration.kErrorInputBorder,
            disabledBorder: DashDecoration.kInputBorder,
            focusedErrorBorder: DashDecoration.kInputBorder,
          ),
        ),
      ],
    );
  }
}
