import 'package:flutter/material.dart';

class Moon extends StatefulWidget {
  const Moon({super.key});

  @override
  State<Moon> createState() => _MoonState();
}

class _MoonState extends State<Moon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
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
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Image.asset(
        fit: BoxFit.cover,
        'assets/images/welcome/moon.png',
        width: 163,
      ),
    );
  }
}
