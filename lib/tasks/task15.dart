import 'package:flutter/material.dart';

class Task13 extends StatefulWidget {
  @override
  _Task13State createState() => _Task13State();

}

class _Task13State extends State<Task13> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(" Tween ␣ Animation ␣ Example ")),
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: _animation.value,
                height: _animation.value,
                color: Colors.blue,
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}