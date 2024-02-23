import 'package:flutter/material.dart';
import 'package:valorant_app/src/core/extension/extension.dart';

void show(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // padding: AppUtils.kPaddingAll16,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 100.h,
          left: 10,
          right: 10),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      backgroundColor: context.theme.colorScheme.secondary,
      clipBehavior: Clip.antiAlias,
      dismissDirection: DismissDirection.up,
      content: Text(message),
    ),
  );
}
