import 'package:flutter/material.dart';
import 'package:flutter_template/app/core/constants/app_colors.dart';

class Ripple extends StatelessWidget {
  final Function()? onTap;
  final Widget? child;
  final Color rippleColor;
  final double rippleRadius;

  const Ripple({
    Key? key,
    this.child,
    required this.onTap,
    this.rippleColor = AppColors.primaryColor,
    this.rippleRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(rippleRadius),
        highlightColor: rippleColor,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
