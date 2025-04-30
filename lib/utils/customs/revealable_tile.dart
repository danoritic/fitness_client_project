import 'package:flutter/material.dart';

class RevealableTextTile extends StatefulWidget {
  final Widget child;
  final Widget background;
  final double revealWidth;

  const RevealableTextTile({
    Key? key,
    required this.child,
    required this.background,
    this.revealWidth = 100.0,
  }) : super(key: key);

  @override
  _RevealableTextTileState createState() => _RevealableTextTileState();
}

class _RevealableTextTileState extends State<RevealableTextTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _dragExtent = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      value: 0.0,
      lowerBound: -widget.revealWidth,
      upperBound: 0.0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragExtent += details.delta.dx;
      _dragExtent = _dragExtent.clamp(-widget.revealWidth, 0.0);
      _controller.value = _dragExtent;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_dragExtent < -widget.revealWidth / 2) {
      _controller.animateTo(-widget.revealWidth);
    } else {
      _controller.animateTo(0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: widget.background,
            ),
          ),
        ),
        GestureDetector(
          onHorizontalDragUpdate: _handleDragUpdate,
          onHorizontalDragEnd: _handleDragEnd,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(_controller.value, 0),
                child: child,
              );
            },
            child: widget.child,
          ),
        ),
      ],
    );
  }
}

// Example usage:
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Revealable TextTile')),
      body: ListView(
        children: [
          RevealableTextTile(
            revealWidth: 120.0,
            background: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Edit')),
                SizedBox(width: 8),
              ],
            ),
            child: ListTile(
              title: Text('Slide me to the left!'),
              subtitle: Text('To reveal the edit button.'),
            ),
          ),
          Divider(),
          RevealableTextTile(
            revealWidth: 80.0,
            background: Icon(Icons.delete, color: Colors.red, size: 36),
            child: ListTile(
              title: Text('Slide me too!'),
              subtitle: Text('To see a delete icon.'),
            ),
          ),
        ],
      ),
    );
  }
}
