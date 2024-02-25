part of 'custom_paint_items.dart';

class CustomWeaponListItem extends StatelessWidget {
  const CustomWeaponListItem({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) => CustomPaint(
    size: Size(double.infinity, 320.h),
    painter: MyTriangle(color: color),
  );
}

class MyTriangle extends CustomPainter {
  MyTriangle({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, Paint()..color = color);

    // final Offset offset = Offset(size.width * 0.5, size.height);
    // canvas.drawRect(
    //     Rect.fromCenter(center: offset, width: 50, height: 50), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
