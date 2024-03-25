part of '../main_page_part.dart';

void showPhotoViewDialog({
  required BuildContext context,
  required String url,
}) {
  showDialog<Widget>(
    context: context,
    barrierColor: Colors.transparent,
    builder: (context) => PhotoView(
      enableRotation: true,
      onTapUp: (context, details, controllerValue) => context.pop(),
      backgroundDecoration: const BoxDecoration(color: Colors.black54),
      imageProvider: CachedNetworkImageProvider(
        url,
      ),
    ),
  );
}
