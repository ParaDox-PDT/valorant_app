import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:valorant_app/src/config/themes/app_typography.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';

Future<void> showNetworkErrorToast({required BuildContext context}) async {
  final FToast fToast = FToast()
    ..init(context)
    ..showToast(
        child: customToast(
          color: context.colorScheme.secondary,
          isConnectError: true,
          message: 'No internet connection',
        ),
        gravity: ToastGravity.TOP);
}

Widget customToast(
        {required String message,
        required Color color,
        bool isConnectError = false}) =>
    DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isConnectError ? colorLightScheme.onBackground : color,
          border: Border.all(
              color: isConnectError
                  ? colorLightScheme.onBackground
                  : Colors.transparent)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            isConnectError
                ? SvgPicture.asset(AppIcons.backArrow)
                : Icon(
                    Icons.check,
                    color: colorLightScheme.onBackground,
                  ),
            12.g,
            Expanded(
              child: Text(
                message,
                style: AppTypography.st2Regular.copyWith(
                    color: isConnectError
                        ? colorLightScheme.secondary
                        : colorLightScheme.primary),
              ),
            ),
          ],
        ),
      ),
    );
