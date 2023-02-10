import 'package:flutter/material.dart';

class HomeCircleAstro extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(200, 200), 250, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
