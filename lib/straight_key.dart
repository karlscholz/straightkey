import 'package:flutter/material.dart';

class StraightKey extends StatefulWidget {
  @override
  _StraightKeyState createState() => _StraightKeyState();
}

class _StraightKeyState extends State<StraightKey> {
  final TextEditingController _controller = TextEditingController();
  DateTime? _pressStartTime;

  void _onTapDown(TapDownDetails details) {
    _pressStartTime = DateTime.now();
  }

  void _onTapUp(TapUpDetails details) {
    final duration = DateTime.now().difference(_pressStartTime!);
    final character = duration.inMilliseconds < 500 ? '.' : '_';
    _controller.text = _controller.text + character;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StraightKey'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTapDown: _onTapDown,
              onTapUp: _onTapUp,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Tap & Hold',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          TextField(
            controller: _controller,
            readOnly: true,
          ),
        ],
      ),
    );
  }
}
