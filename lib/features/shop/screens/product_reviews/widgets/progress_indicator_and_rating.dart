import 'package:flutter/material.dart';

import 'rating_progress_indicator.dart';

class YbOverallProductRating extends StatelessWidget {
  const YbOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              YbRatingProgressIndicator(text: '5', value: 1.0),
              YbRatingProgressIndicator(text: '4', value: 0.8),
              YbRatingProgressIndicator(text: '3', value: 0.6),
              YbRatingProgressIndicator(text: '2', value: 0.4),
              YbRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
