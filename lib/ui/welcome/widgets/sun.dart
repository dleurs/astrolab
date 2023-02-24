import 'package:flutter/material.dart';

class Sun extends StatefulWidget {
  const Sun({super.key});

  @override
  State<Sun> createState() => _SunState();
}

class _SunState extends State<Sun> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          'assets/images/welcome/sun.png',
          width: 240,
        ),
        Positioned(
          top: 120 / 2 - 50,
          left: 240 / 2 - 50,
          child: RotationTransition(
            turns: Tween(begin: 1.0, end: 0.0).animate(_controller),
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/welcome/sunrotate.png',
              width: 120,
            ),
          ),
        ),
      ],
    );
  }
}
