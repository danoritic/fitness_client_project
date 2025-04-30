import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';

class RaterWidget extends StatefulWidget {
  final Function(int) rateGetterFunction;
  final double starSize;
  const RaterWidget(
      {super.key, required this.rateGetterFunction, this.starSize = 40});

  @override
  State<RaterWidget> createState() => _RaterWidgetState();
}

class _RaterWidgetState extends State<RaterWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildRatingRow();
  }

  int rating = 0;

  Row _buildRatingRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) {
          return InkWell(
            onTap: () {
              rating = index + 1;
              widget.rateGetterFunction.call(rating);

              setState(() {});
            },
            child: Icon(
              Icons.star_rounded,
              color: getFigmaColor((index + 1 > rating) ? "D7D8D9" : "F97316"),
              size: widget.starSize,
            ),
          );
        },
      ),
    );
  }
}
