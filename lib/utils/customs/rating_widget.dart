import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  final Map ratingDetails;
  final Widget? fillWidget;
  final Widget? fillWidgetForBackground;
  final Widget? prefixWidget;
  final double? height;
  final double? maxwidth;
  final EdgeInsets? spaceBetweenBars;

  const RatingWidget({
    super.key,
    required this.ratingDetails,
    this.fillWidget,
    this.fillWidgetForBackground,
    this.prefixWidget,
    this.height,
    this.maxwidth,
    this.spaceBetweenBars,
  });

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  // double maxwidth = 150;
  // double fillPercentage = 70;

  List<double> getPercentageList() {
    int totalRatingNumbers = 0;
    int totalRatingValue = 0;

    List<double> result = [];

    (widget.ratingDetails as Map?)?.forEach(
      (key, value) {
        result.add(getEachPercentage(value));
        // result.add((value / totalRatingNumbers) * 100);
        // totalRatingNumbers += (value as int);
        // totalRatingValue += value * (key as int);
      },
    );
    return result;
  }

  double getEachPercentage(int value) {
    int totalRatingNumbers = 0;

    (widget.ratingDetails as Map?)?.forEach(
      (key, value) {
        totalRatingNumbers += (value as int);
      },
    );
    if (totalRatingNumbers == 0) totalRatingNumbers = 1;
    return (value / totalRatingNumbers) * 100;
  }

  @override
  Widget build(BuildContext context) {
    // FancyContainer f = FancyContainer(
    //   height: 20,
    //   width: (70 / 100) * maxwidth,
    //   backgroundColor: Colors.green,
    // );

    return Center(
      child: FancyContainer(
        // radius: 40,
        // height: 50,
        // width: 50,
        backgroundColor: Colors.black,
        radius: 60,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      FancyText(
                        "4.8",
                        size: 36,
                        textColor: Colors.white,
                        weight: FontWeight.w900,
                      ),
                      FancyText(
                        "87 Reviews",
                        size: 12,
                        textColor: Colors.white,
                        weight: FontWeight.w900,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...widget.ratingDetails.keys.toList().reversed.map(
                      (key) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FancyText(
                              "$key",
                              textColor: Colors.white,
                              weight: FontWeight.w900,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: getFigmaColor("F97316"),
                            ),
                            _buildRatingBar(
                                getEachPercentage(widget.ratingDetails[key])),
                          ],
                        );
                        // retirn getEachPercentage(widget.ratingDetails[key]);
                      },
                    ).toList()
                  ]),
            ],
          ),
        ),
      ),
    );

    // Scaffold(
    //   body:
    // );
  }

  Widget _buildRatingBar(double percentage) {
    return Padding(
      padding: widget.spaceBetweenBars ?? const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          FancyContainer(
            radius: 4,
            height: widget.height ?? 6,
            width: widget.maxwidth ?? 120,
            backgroundColor: Colors.grey.withAlpha(100),
          ),
          FancyContainer(
            radius: 10,
            height: widget.height ?? 6,
            width: (percentage / 100) * (widget.maxwidth ?? 120),
            backgroundColor: (widget.fillWidget == null) ? Colors.white : null,
            child: (widget.fillWidget == null)
                ? null
                : Expanded(child: widget.fillWidget!),
          )
        ],
      ),
    );
  }
}
