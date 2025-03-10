import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '/app/core/widget/elevated_container.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ElevatedContainer(
        padding: EdgeInsets.all(16),
        child: CircularProgressIndicator(color: AppColors.primaryColor),
      ),
    );
  }
}
