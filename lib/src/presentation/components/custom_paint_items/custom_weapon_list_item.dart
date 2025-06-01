part of 'custom_paint_items.dart';

///WEAPONS LEFT ITEM
class CustomWeaponListLeftItem extends StatelessWidget {
  const CustomWeaponListLeftItem(
      {super.key,
      required this.color,
      required this.child,
      required this.onTap});

  final Color color;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ZoomTapAnimation(
        onTap: onTap,
        child: CustomPaint(
          size: Size(double.infinity, 150.h),
          painter: WeaponListLeftItem(color: color),
          foregroundPainter: WeaponListLeftItem(color: color),
          child: SizedBox(
            width: double.infinity,
            height: 150.h,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 20.w),
              child: child,
            ),
          ),
        ),
      );
}

class WeaponListLeftItem extends CustomPainter {
  WeaponListLeftItem({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - 15.w, size.height - 12.5.h)
      ..lineTo(size.width, size.height - 25.h)
      ..lineTo(size.width - 15.w, size.height - 37.5.h)
      ..lineTo(size.width, size.height - 50.h)
      ..lineTo(size.width - 15.w, size.height - 62.5.h)
      ..lineTo(size.width, size.height - 75.h)
      ..lineTo(size.width - 15.w, size.height - 87.5.h)
      ..lineTo(size.width, size.height - 100.h)
      ..lineTo(size.width - 15.w, size.height - 112.5.h)
      ..lineTo(size.width, size.height - 125.h)
      ..lineTo(size.width - 15.w, size.height - 137.5.h)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.stroke
          ..color = color
          ..strokeWidth = 1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

///WEAPONS RIGHT ITEM
class CustomWeaponListRightItem extends StatelessWidget {
  const CustomWeaponListRightItem(
      {super.key, required this.color, required this.child, required this.onTap});

  final Color color;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ZoomTapAnimation(
        onTap: onTap,
        child: CustomPaint(
          size: Size(double.infinity, 150.h),
          painter: WeaponListRightItem(color: color),
          child: SizedBox(
            width: double.infinity,
            height: 150.h,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 16.w),
              child: child,
            ),
          ),
        ),
      );
}

class WeaponListRightItem extends CustomPainter {
  WeaponListRightItem({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final path2 = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0 - 15.w, size.height - 12.5.h)
      ..lineTo(0, size.height - 25.h)
      ..lineTo(0 - 15.w, size.height - 37.5.h)
      ..lineTo(0, size.height - 50.h)
      ..lineTo(0 - 15.w, size.height - 62.5.h)
      ..lineTo(0, size.height - 75.h)
      ..lineTo(0 - 15.w, size.height - 87.5.h)
      ..lineTo(0, size.height - 100.h)
      ..lineTo(0 - 15.w, size.height - 112.5.h)
      ..lineTo(0, size.height - 125.h)
      ..lineTo(0 - 15.w, size.height - 137.5.h)
      ..lineTo(0, 0)
      ..close();
    canvas.drawPath(
        path2,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}