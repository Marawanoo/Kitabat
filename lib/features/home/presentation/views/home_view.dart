import 'package:flutter/material.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_bottom_book_card_builder.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_search_bar.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/home_top_book_card_builder.dart';
import 'package:kitabat_app/features/home/presentation/views/widgets/title_book_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HomeSearchBar()),
          SliverToBoxAdapter(child: HomeTopBookCardBuilder()),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TitleBookList(),
          )),
          HomeBottomBookCardBuilder()
        ],
      ),
    );
  }
}
