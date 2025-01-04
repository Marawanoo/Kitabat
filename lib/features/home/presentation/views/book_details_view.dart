import 'package:flutter/material.dart';

import '../widgets/details_widgets/details_app_bar.dart';
import '../widgets/details_widgets/details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: DetailsAppBar(), body: DetailsBody());
  }
}
