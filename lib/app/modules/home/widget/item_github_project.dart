import 'package:flutter/material.dart';
import 'package:flutter_template/app/core/widget/ripple.dart';
import 'package:get/get.dart';

import '/app/core/base/base_widget_mixin.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_styles.dart';
import '/app/core/widget/elevated_container.dart';
import '/app/core/widget/icon_text_widgets.dart';
import '/app/modules/home/model/github_project_ui_data.dart';
import '/app/routes/app_pages.dart';

class ItemGithubProject extends StatelessWidget with BaseWidgetMixin {
  final GithubProjectUiData dataModel;

  ItemGithubProject({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return ElevatedContainer(
      child: Ripple(
        onTap: _onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(dataModel.ownerAvatar),
                radius: 30,
              ),
              const SizedBox(width: 10),
              _getDetailsView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDetailsView() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataModel.repositoryName,
            style: cardTitleStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(height: 4),
          Text(
            dataModel.ownerLoginName,
            style: cardSubtitleStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          _getForkStarWatcherView(),
        ],
      ),
    );
  }

  Widget _getForkStarWatcherView() {
    return Row(
      children: [
        IconTextWidget(
          fileName: "ic_fork.svg",
          value: dataModel.numberOfFork.toString(),
          height: 20,
          width: 20,
          color: AppColors.charade.withOpacity(0.5),
        ),
        IconTextWidget(
          icon: Icons.star_border,
          value: dataModel.numberOfStar.toString(),
          size: 20,
          color: AppColors.charade.withOpacity(0.5),
        ),
        IconTextWidget(
          icon: Icons.visibility_outlined,
          value: dataModel.watchers.toString(),
          size: 20,
          color: AppColors.charade.withOpacity(0.5),
        ),
      ],
    );
  }

  void _onTap() {
    Get.toNamed(Routes.PROJECT_DETAILS, arguments: dataModel);
  }
}
