import 'package:flutter/material.dart';
import '/app/core/base/base_widget_mixin.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_styles.dart';
import '/app/core/widget/asset_image_view.dart';
import '/app/core/widget/ripple.dart';

class ItemSettings extends StatelessWidget with BaseWidgetMixin {
  final String prefixImage;
  final String suffixImage;
  final String title;
  final Function()? onTap;

  ItemSettings({
    required this.prefixImage,
    required this.suffixImage,
    required this.title,
    required this.onTap,
  });

  @override
  Widget body(BuildContext context) {
    return Ripple(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            AssetImageView(
              fileName: prefixImage,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 8),
            Text(title, style: settingsItemStyle),
            const Spacer(),
            AssetImageView(
              fileName: suffixImage,
              color: AppColors.primaryColor,
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
