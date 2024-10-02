import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/details_widgets/details_app_bar.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/details_widgets/details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: DetailsAppBar(), body: DetailsBody());
  }
}
