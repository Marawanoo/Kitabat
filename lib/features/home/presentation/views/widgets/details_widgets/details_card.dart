import 'package:flutter/material.dart';

import 'details_card_items.dart';
import 'details_card_price.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      child: Card(
        elevation: 0,
        color: Colors.brown.shade50,
        child: const Stack(
          children: [DetailsCardItems(), DetailsCardPrice()],
        ),
      ),
    );
  }
}
