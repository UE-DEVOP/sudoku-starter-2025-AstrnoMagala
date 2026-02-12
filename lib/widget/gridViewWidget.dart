import 'package:flutter/material.dart';

class GridVieWidget extends StatefulWidget {
  const GridVieWidget({super.key, this.color = Colors.blueAccent,  this.width, this.size = 0, this.child});

  final Color color;
  final double? width;
  final double size;
  final Widget? child;

  @override
  State<GridVieWidget> createState() => _GridVieWidgetState();
}

class _GridVieWidgetState extends State<GridVieWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children:
        List.generate(9, (x) {
          return Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(border: Border.all(color: widget.color, width: widget.width ?? 1)),
            child: widget.child,
          );
        }),
    );
  }
}