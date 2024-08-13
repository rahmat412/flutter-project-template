import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';


mixin BaseWidgetMixin on StatelessWidget {
  AppLocalizations get appLocalization => AppLocalizations.of(Get.context!)!;

  @override
  Widget build(BuildContext context) {
    return Container(child: body(context));
  }

  Widget body(BuildContext context);
}
