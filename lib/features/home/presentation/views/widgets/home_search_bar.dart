import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/search_filter_container.dart';
import 'package:kitabat_app/features/widgets/custom_text_field.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Row(
        children: [SearchFilterContainer(), Spacer(), CustomTextField()],
      ),
    );
  }
}
