import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;

class BlurScaffoldWidget extends StatelessWidget {
  const BlurScaffoldWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image or Color
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.width,
              child: const rive.RiveAnimation.asset(
                AppAssets.kDash,
              ), // Add your background image here
            ),
          ),
          // Blurred Container
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: AppColors.kH11.withOpacity(0.8), // Adjust opacity
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
