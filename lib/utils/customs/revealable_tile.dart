import 'package:flutter/material.dart';

class RevealableTile extends StatefulWidget {
  final Widget child;
  final Widget background;
  // final double revealWidth;
  RevealableTileController revealableTileController;

  RevealableTile({
    Key? key,
    required this.child,
    required this.background,
    required this.revealableTileController,
  }) : super(key: key);

  @override
  _RevealableTileState createState() => _RevealableTileState();
}

class _RevealableTileState extends State<RevealableTile>
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
      lowerBound: -widget.revealableTileController.revealWidth,
      upperBound: 0.0,
    );
    widget.revealableTileController.animationController = _controller;
  }

  @override
  void dispose() {
    widget.revealableTileController.animationController?.dispose();
    super.dispose();
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    widget.revealableTileController.onDragStart?.call();
    setState(() {
      _dragExtent += details.delta.dx;
      _dragExtent =
          _dragExtent.clamp(-widget.revealableTileController.revealWidth, 0.0);
      widget.revealableTileController.animationController?.value = _dragExtent;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_dragExtent < -widget.revealableTileController.revealWidth / 2) {
      widget.revealableTileController.animationController
          ?.animateTo(-widget.revealableTileController.revealWidth);
      widget.revealableTileController.onOpen?.call();
    } else {
      widget.revealableTileController.animationController?.animateTo(0.0);
      widget.revealableTileController.onClose?.call();
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
            animation: widget.revealableTileController.animationController!,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                    widget.revealableTileController.animationController!.value,
                    0),
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

class RevealableTileController {
  String id;
  bool isOpen = false;
  double revealWidth = 100.0;
  final Function()? onOpen;
  final Function()? onClose;
  final Function()? onDragStart;

  RevealableTileController({
    this.onOpen,
    this.onClose,
    this.onDragStart,
    required this.id,
    this.revealWidth = 100.0,
  }) {
    // animationController = AnimationController(vsync: null);
  }
  AnimationController? animationController;

  Future slideAndSetIsOpenState(bool toOriginaPosition) async {
    if (toOriginaPosition) {
      await animationController?.animateTo(-revealWidth);
      isOpen = true;
    } else {
      await animationController?.animateTo(0.0);
      isOpen = false;
    }
  }
}
