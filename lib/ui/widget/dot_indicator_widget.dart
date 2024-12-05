import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  final Function(int currentIndex) onTap;

  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return InkWell(
          onTap: () => onTap(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 8,
            width: currentIndex == index ? 25 : 8,
            decoration: BoxDecoration(
              color: currentIndex == index ? Colors.blue : Colors.grey,
              // shape: BoxShape.circle,
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
          ),
        );
      }),
    );
  }
}
