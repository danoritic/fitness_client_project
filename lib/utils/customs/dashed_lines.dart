import 'dart:math' as math;
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';

class DirectionalDashedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double strokeWidth;
  final double angleInRadians;

  DirectionalDashedLinePainter({
    this.dashWidth = 10.0,
    this.dashSpace = 5.0,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.angleInRadians = 0.0, // Default to horizontal
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.butt;

    double currentLength = 0.0;
    while (currentLength < size.longestSide) {
      final startPoint = Offset(
        size.width / 2 + currentLength * math.cos(angleInRadians),
        size.height / 2 + currentLength * math.sin(angleInRadians),
      );
      final endPoint = Offset(
        size.width / 2 + (currentLength + dashWidth) * math.cos(angleInRadians),
        size.height / 2 +
            (currentLength + dashWidth) * math.sin(angleInRadians),
      );

      canvas.drawLine(startPoint, endPoint, paint);
      currentLength += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DirectionalDashedLinePainter oldDelegate) =>
      dashWidth != oldDelegate.dashWidth ||
      dashSpace != oldDelegate.dashSpace ||
      color != oldDelegate.color ||
      strokeWidth != oldDelegate.strokeWidth ||
      angleInRadians != oldDelegate.angleInRadians;
}

class DirectionalDashedLine extends StatelessWidget {
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double strokeWidth;
  final double length;
  final double angle; // Angle in degrees

  const DirectionalDashedLine({
    Key? key,
    this.dashWidth = 10.0,
    this.dashSpace = 5.0,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.length = 100.0,
    this.angle = 0.0, // Default to horizontal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final angleInRadians = angle * math.pi / 180;
    return SizedBox(
      width: length * math.cos(angleInRadians).abs(),
      height: length * math.sin(angleInRadians).abs(),
      child: CustomPaint(
        painter: DirectionalDashedLinePainter(
          dashWidth: dashWidth,
          dashSpace: dashSpace,
          color: color,
          strokeWidth: strokeWidth,
          angleInRadians: angleInRadians,
        ),
      ),
    );
  }
}

class MyDirectionalDashedLineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directional Dashed Line Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Horizontal Dashed Line:'),
            const SizedBox(height: 10),
            const DirectionalDashedLine(color: Colors.green, length: 150),
            const SizedBox(height: 20),
            const Text('Vertical Dashed Line:'),
            const SizedBox(height: 10),
            const DirectionalDashedLine(
                color: Colors.orange, length: 100, angle: 90),
            const SizedBox(height: 20),
            const Text('Diagonal Dashed Line:'),
            const SizedBox(height: 10),
            const DirectionalDashedLine(
                color: Colors.purple, length: 120, angle: 45),
          ],
        ),
      ),
    );
  }
}
